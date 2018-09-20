package com.example.service;

import com.example.thrift.CalculatorService;
import com.example.thrift.TInvalidParameterException;
import org.apache.thrift.TException;

public class CalculatorServiceImpl implements CalculatorService.Iface {
    @Override
    public int add(int param1, int param2) throws TException {
        return param1 + param2;
    }

    @Override
    public int sub(int param1, int param2) throws TException {
        return param1 - param2;
    }

    @Override
    public int mul(int param1, int param2) throws TException {
        return param1 * param2;
    }

    @Override
    public int div(int param1, int param2) throws TInvalidParameterException {
        if (param2 == 0){
            throw new TInvalidParameterException("Divide by Zero.");
        }
        return param1 / param2;
    }
}
