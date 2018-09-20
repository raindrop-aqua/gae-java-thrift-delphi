package com.example.handler;

import com.example.service.CalculatorServiceImpl;
import com.example.thrift.CalculatorService;
import org.apache.thrift.protocol.TBinaryProtocol;
import org.apache.thrift.server.TServlet;

import javax.servlet.annotation.WebServlet;

@WebServlet(name = "CalculatorHandler", urlPatterns = "/calculator")
public class CalculatorHandler extends TServlet {
    public CalculatorHandler() {
        super(new CalculatorService.Processor<>(new CalculatorServiceImpl()), new TBinaryProtocol.Factory());
    }
}
