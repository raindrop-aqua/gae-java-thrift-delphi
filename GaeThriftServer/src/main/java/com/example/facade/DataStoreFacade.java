package com.example.facade;

import com.example.handler.DataStoreHandler;
import com.example.thrift.DataStoreService;
import org.apache.thrift.protocol.TBinaryProtocol;
import org.apache.thrift.server.TServlet;

public class DataStoreFacade extends TServlet {

    public DataStoreFacade() {
        super(new DataStoreService.Processor<>(new DataStoreHandler()), new TBinaryProtocol.Factory());
    }
}
