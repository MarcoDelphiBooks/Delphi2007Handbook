unit dbx4main;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, WideStrings, FMTBcd, StdCtrls, DB, SqlExpr;

type
  TForm1 = class(TForm)
    EMPLOYEE: TSQLDataSet;
    Button1: TButton;
    ListBox1: TListBox;
    Button2: TButton;
    ListBox2: TListBox;
    Button3: TButton;
    TEST: TSQLConnection;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

uses
  DBXPlatform, DBXCommon;

{$R *.dfm}

procedure TForm1.Button1Click(Sender: TObject);
var
  aConnection: TDBXConnection;
begin
  aConnection := TDBXConnectionFactory.
    GetConnectionFactory.
    GetConnection('test', '', '');
  aConnection.GetCommandTypes(ListBox1.Items);
  aConnection.GetCommands('ctTable', ListBox2.Items);
end;

procedure TForm1.Button2Click(Sender: TObject);
begin
  test.Connected := True;
  test.DBXConnection.GetCommands('ctStoredProcedure', ListBox2.Items);
end;

procedure TForm1.Button3Click(Sender: TObject);
begin
  EMPLOYEE.Open;
end;

end.
