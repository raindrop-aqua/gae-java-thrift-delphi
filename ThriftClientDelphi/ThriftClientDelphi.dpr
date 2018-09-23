program ThriftClientDelphi;

uses
  System.StartUpCopy,
  FMX.Forms,
  MainForm in 'MainForm.pas' {frmMain},
  ThriftInterface.Calculator in 'ThriftInterface\ThriftInterface.Calculator.pas',
  ThriftInterface.Common in 'ThriftInterface\ThriftInterface.Common.pas',
  ThriftInterface.Todo in 'ThriftInterface\ThriftInterface.Todo.pas',
  Thrift.Collections in 'Thrift\Thrift.Collections.pas',
  Thrift.Exception in 'Thrift\Thrift.Exception.pas',
  Thrift in 'Thrift\Thrift.pas',
  Thrift.Processor.Multiplex in 'Thrift\Thrift.Processor.Multiplex.pas',
  Thrift.Protocol.Compact in 'Thrift\Thrift.Protocol.Compact.pas',
  Thrift.Protocol.JSON in 'Thrift\Thrift.Protocol.JSON.pas',
  Thrift.Protocol.Multiplex in 'Thrift\Thrift.Protocol.Multiplex.pas',
  Thrift.Protocol in 'Thrift\Thrift.Protocol.pas',
  Thrift.Serializer in 'Thrift\Thrift.Serializer.pas',
  Thrift.Server in 'Thrift\Thrift.Server.pas',
  Thrift.Socket in 'Thrift\Thrift.Socket.pas',
  Thrift.Stream in 'Thrift\Thrift.Stream.pas',
  Thrift.Transport in 'Thrift\Thrift.Transport.pas',
  Thrift.Transport.Pipes in 'Thrift\Thrift.Transport.Pipes.pas',
  Thrift.TypeRegistry in 'Thrift\Thrift.TypeRegistry.pas',
  Thrift.Utils in 'Thrift\Thrift.Utils.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TfrmMain, frmMain);
  Application.Run;
end.
