namespace java com.example.thrift
namespace delphi ThriftInterface.Calculator

include "common.thrift"

/** 計算サービス */
service CalculatorService {
    /** 加算 */
    i32 add(1:i32 param1, 2:i32 param2),
    /** 減算 */
    i32 sub(1:i32 param1, 2:i32 param2),
    /** 乗算 */
    i32 mul(1:i32 param1, 2:i32 param2),
    /** 除算 */
    i32 div(1:i32 param1, 2:i32 param2) throws (1: common.TInvalidParameterException error)
}
