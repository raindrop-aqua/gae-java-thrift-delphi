namespace java com.example.thrift
namespace delphi ThriftInterface.DataStore

struct TStoreData {
    1:string note
}

service DataStoreService {
    bool save(1:TStoreData data)
}
