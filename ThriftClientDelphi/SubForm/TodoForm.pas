unit TodoForm;

interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes, System.Variants, 
  FMX.Types, FMX.Graphics, FMX.Controls, FMX.Forms, FMX.Dialogs, FMX.StdCtrls,
  System.Rtti, FMX.Grid.Style, FMX.Edit, FMX.Controls.Presentation,
  FMX.ScrollBox, FMX.Grid, FMX.SearchBox, FMX.ListBox, FMX.Layouts;

type
  TfrmTodo = class(TFrame)
    Edit1: TEdit;
    btnAdd: TButton;
    ListBox1: TListBox;
    btnRemove: TButton;
    btnRefresh: TButton;
    procedure btnAddClick(Sender: TObject);
    procedure btnRemoveClick(Sender: TObject);
    procedure btnRefreshClick(Sender: TObject);
  private
    { private êÈåæ }
  public
    { public êÈåæ }
  end;

implementation

{$R *.fmx}

procedure TfrmTodo.btnAddClick(Sender: TObject);
begin
//
end;

procedure TfrmTodo.btnRefreshClick(Sender: TObject);
begin
//
end;

procedure TfrmTodo.btnRemoveClick(Sender: TObject);
begin
//
end;

end.
