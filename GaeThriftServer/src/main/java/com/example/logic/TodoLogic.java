package com.example.logic;

import com.example.thrift.TTodo;
import com.google.appengine.api.datastore.*;

import java.util.ArrayList;
import java.util.List;
import java.util.logging.Logger;

public class TodoLogic {

    private static final Logger log = Logger.getLogger(TodoLogic.class.getName());

    public static List<TTodo> getTodoList() {
        log.info("getTodoList");

        DatastoreService ds = DatastoreServiceFactory.getDatastoreService();

        Query q = new Query("Todo");
        PreparedQuery pq = ds.prepare(q);
        List<Entity> result = pq.asList(FetchOptions.Builder.withDefaults());

        List<TTodo> list = new ArrayList<>();
        for (Entity e : result) {
            TTodo todo = new TTodo();
            todo.setId(KeyFactory.keyToString(e.getKey()));
            todo.setDetail((String)e.getProperty("detail"));
            todo.setChecked((boolean)e.getProperty("checked"));
            list.add(todo);
        }
        return list;
    }

    public static String post(String detail) {
        log.info("post:" + detail);

        DatastoreService ds = DatastoreServiceFactory.getDatastoreService();

        Entity todo = new Entity("Todo");
        todo.setProperty("detail", detail);
        todo.setProperty("checked", false);
        ds.put(todo);

        return KeyFactory.keyToString(todo.getKey());
    }

    public static void toggle(String id) {
        log.info("toggle:" + id);
    }

    public static void remove(String id) {
        log.info("remove:" + id);
    }
}
