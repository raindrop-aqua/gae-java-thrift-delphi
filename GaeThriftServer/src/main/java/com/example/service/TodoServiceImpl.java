package com.example.service;

import com.example.thrift.TInvalidParameterException;
import com.example.thrift.TTodo;
import com.example.thrift.TodoService;
import org.apache.thrift.TException;

import java.util.List;

public class TodoServiceImpl implements TodoService.Iface {
    @Override
    public List<TTodo> getTodoList() throws TException {
        return null;
    }

    @Override
    public void post(String detail) throws TException {

    }

    @Override
    public void toggle(int id) throws TInvalidParameterException, TException {

    }

    @Override
    public void remove(int id) throws TInvalidParameterException, TException {

    }
}
