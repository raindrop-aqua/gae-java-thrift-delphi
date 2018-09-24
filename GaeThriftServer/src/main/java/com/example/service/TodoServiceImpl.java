package com.example.service;

import com.example.logic.TodoLogic;
import com.example.thrift.TInvalidParameterException;
import com.example.thrift.TTodo;
import com.example.thrift.TodoService;
import org.apache.thrift.TException;

import java.util.List;

public class TodoServiceImpl implements TodoService.Iface {
    @Override
    public List<TTodo> getTodoList() throws TException {
        return TodoLogic.getTodoList();
    }

    @Override
    public void post(String detail) throws TException {
        TodoLogic.post(detail);
    }

    @Override
    public void toggle(String id) throws TInvalidParameterException, TException {
        TodoLogic.toggle(id);
    }

    @Override
    public void remove(String id) throws TInvalidParameterException, TException {
        TodoLogic.remove(id);
    }
}
