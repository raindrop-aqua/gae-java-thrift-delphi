package com.example.logic;

import com.example.thrift.TTodo;
import com.google.appengine.api.datastore.DatastoreService;
import com.google.appengine.api.datastore.DatastoreServiceFactory;
import com.google.appengine.api.datastore.Entity;

import java.util.ArrayList;
import java.util.List;
import java.util.logging.Logger;

public class TodoLogic {

    private static final Logger log = Logger.getLogger(TodoLogic.class.getName());

    public static List<TTodo> getTodoList() {
        log.info("getTodoList");

        List<TTodo> list = new ArrayList<>();
        TTodo todo  = new TTodo();
        todo.setId("1");
        todo.setDetail("first item");
        todo.setChecked(false);
        list.add(todo);
        return list;
    }

    public static void post(String detail) {
        log.info("post:" + detail);

        DatastoreService ds = DatastoreServiceFactory.getDatastoreService();

        Entity todo = new Entity("Todo");
        todo.setProperty("detail", detail);
        todo.setProperty("checked", false);
        ds.put(todo);
    }

    public static void toggle(String id) {
        log.info("toggle:" + id);
    }

    public static void remove(String id) {
        log.info("remove:" + id);
    }
}
