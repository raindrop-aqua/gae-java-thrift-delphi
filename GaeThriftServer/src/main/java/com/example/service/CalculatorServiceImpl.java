package com.example.service;

import com.example.thrift.CalculatorService;
import com.example.thrift.TInvalidParameterException;
import org.apache.thrift.TException;

public class CalculatorServiceImpl implements CalculatorService.Iface {
    @Override
    public int add(int a, int b) throws TException {
        return 0;
    }

    @Override
    public int sub(int param1, int param2) throws TException {
        return 0;
    }

    @Override
    public int mul(int param1, int param2) throws TException {
        return 0;
    }

    @Override
    public int div(int param1, int param2) throws TInvalidParameterException, TException {
        return 0;
    }
}
