package com.example.handler;

import com.example.thrift.CalcService;
import org.apache.thrift.TException;

public class CalcHandler implements CalcService.Iface {
    @Override
    public int add(int a, int b) throws TException {
        return 0;
    }
}
