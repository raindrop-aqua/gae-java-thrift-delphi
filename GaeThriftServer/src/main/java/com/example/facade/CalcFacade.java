package com.example.facade;

import com.example.handler.CalcHandler;
import com.example.thrift.CalcService;
import org.apache.thrift.protocol.TBinaryProtocol;
import org.apache.thrift.server.TServlet;

import javax.servlet.annotation.WebServlet;

@WebServlet(name = "CalcFacade", urlPatterns = "/calc")
public class CalcFacade extends TServlet {

    public CalcFacade() {
        super(new CalcService.Processor<>(new CalcHandler()), new TBinaryProtocol.Factory());
    }
}
