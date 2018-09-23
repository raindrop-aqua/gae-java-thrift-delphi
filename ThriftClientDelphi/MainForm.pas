unit MainForm;

interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes,
  System.Variants,
  FMX.Types, FMX.Controls, FMX.Forms, FMX.Graphics, FMX.Dialogs, FMX.StdCtrls,
  FMX.Edit, FMX.Controls.Presentation, Thrift, Thrift.Transport,
  Thrift.Protocol,
  ThriftInterface.Calculator;

type
  TfrmMain = class(TForm)
    Button1: TButton;
    Edit1: TEdit;
    Edit2: TEdit;
    Edit3: TEdit;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    procedure Button1Click(Sender: TObject);
  private
    { private �錾 }
  public
    { public �錾 }
  end;

var
  frmMain: TfrmMain;

implementation

{$R *.fmx}

procedure TfrmMain.Button1Click(Sender: TObject);
var
  Transport: ITransport;
  Protocol: IProtocol;
  Client: TCalculatorService.Iface;
  P1, P2, Answer: integer;
begin
  try
    Transport := THTTPClientImpl.Create('http://localhost:8080/calculator');
    Protocol := TBinaryProtocolImpl.Create(Transport);
    Client := TCalculatorService.TClient.Create(Protocol);

    P1 := StrToInt(Edit1.Text);
    P2 := StrToInt(Edit2.Text);

    Transport.Open;
    Answer := Client.add(P1, P2);
    Transport.Close;

    Edit3.Text := IntToStr(Answer);

  except
    on e: Exception do
      WriteLn(e.ClassName + ': ' + e.Message);
  end;
end;

end.
