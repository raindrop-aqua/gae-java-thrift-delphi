set thrift="e:/bin/thrift.exe"

rmdir /s /q gen-java
rmdir /s /q gen-delphi

%thrift% -r --gen java --gen delphi IDL/common.thrift
%thrift% -r --gen java --gen delphi IDL/calculator.thrift
%thrift% -r --gen java --gen delphi IDL/todo.thrift

pause:
