namespace java com.example.thrift
namespace delphi ThriftInterface.Todo

include "common.thrift"

/** TodoのID */
typedef i32 todoId

/** Todo */
struct TTodo {
    1: todoId id,
    2: bool checked,
    3: string detail
}

/** Todoサービス */
service TodoService {
    /** リストを取得する */
    list<TTodo> getTodoList(),
    /** Todoを投稿する */
    void post(1: string detail),
    /** Todoのステータスを完了/未完了に変更する */
    void toggle(1: todoId id) throws (1: common.TInvalidParameterException error),
    /** Todoを削除する */
    void remove(1: todoId id) throws (1: common.TInvalidParameterException error)
}
