package com.example.handler;

import com.example.thrift.DataStoreService;
import com.example.thrift.TStoreData;
import org.apache.thrift.TException;

public class DataStoreHandler implements DataStoreService.Iface {
    @Override
    public boolean save(TStoreData data) throws TException {
        return false;
    }
}
