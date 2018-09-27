unit MainForm;

interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes,
  System.Variants,
  FMX.Types, FMX.Controls, FMX.Forms, FMX.Graphics, FMX.Dialogs, FMX.StdCtrls,
  FMX.Edit, FMX.Controls.Presentation, FMX.Layouts, FMX.ListBox;

type
  TfrmMain = class(TForm)
    pnlSide: TPanel;
    pnlMain: TPanel;
    Splitter1: TSplitter;
    ListBox1: TListBox;
    Button1: TButton;
    procedure Button1Click(Sender: TObject);
  private
    { private êÈåæ }
    frame: TFrame;
  public
    { public êÈåæ }
  end;

var
  frmMain: TfrmMain;

implementation

uses
  BlankForm, AddCalculatorForm, CalculatorForm, TodoForm;


{$R *.fmx}

procedure TfrmMain.Button1Click(Sender: TObject);
var
  item: TListBoxItem;
begin

  item := ListBox1.Selected;

  if Assigned(frame) then begin
    frame.Free;
    frame := nil;
  end;

  if not Assigned(item) then begin
    frame := TfrmBlank.Create(self);
  end else if item.Text = 'Add Calculator' then begin
    frame := TfrmAddCalculator.Create(self);
  end else if item.Text = 'Calculator' then begin
    frame := TfrmCalculator.Create(self);
  end else if item.Text = 'Todo' then begin
    frame := TfrmTodo.Create(self);
  end else begin
    frame := TfrmBlank.Create(self);
  end;

  frame.Align := TAlignLayout.Client;
  frame.Parent := pnlMain;
end;

end.
