package com.example.logic;

import com.example.thrift.TTodo;

import java.util.ArrayList;
import java.util.List;
import java.util.logging.Logger;

public class TodoLogic {

    private static final Logger log = Logger.getLogger(TodoLogic.class.getName());

    public static List<TTodo> getTodoList() {
        log.info("getTodoList");

        List<TTodo> list = new ArrayList<>();
        TTodo todo  = new TTodo();
        todo.setId(1);
        todo.setDetail("first item");
        todo.setChecked(false);
        list.add(todo);
        return list;
    }

    public static void post(String detail) {
        log.info("post:" + detail);
    }

    public static void toggle(int id) {
        log.info("toggle:" + id);
    }

    public static void remove(int id) {
        log.info("remove:" + id);
    }
}
