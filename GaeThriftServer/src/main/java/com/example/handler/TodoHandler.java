package com.example.handler;

import com.example.service.TodoServiceImpl;
import com.example.thrift.TodoService;
import org.apache.thrift.protocol.TBinaryProtocol;
import org.apache.thrift.server.TServlet;

import javax.servlet.annotation.WebServlet;

@WebServlet(name = "TodoHandler", urlPatterns = "/todo")
public class TodoHandler extends TServlet {
    public TodoHandler() {
        super(new TodoService.Processor<>(new TodoServiceImpl()), new TBinaryProtocol.Factory());
    }
}
