set thrift="e:/bin/thrift.exe"

rmdir /s /q gen-java
rmdir /s /q gen-delphi

%thrift% -r --gen java --gen delphi IDL/calc.thrift
%thrift% -r --gen java --gen delphi IDL/datastore.thrift

pause:
