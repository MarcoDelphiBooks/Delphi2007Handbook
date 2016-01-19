unit DbxReadForm;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, WideStrings, FMTBcd, StdCtrls, ComCtrls, DB, SqlExpr;

type
  TForm18 = class(TForm)
    SQLConnection1: TSQLConnection;
    SQLDataSet1: TSQLDataSet;
    ListView1: TListView;
    btnOpen: TButton;
    SQLDataSet2: TSQLDataSet;
    procedure btnOpenClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    slistDepartments: TStringList;
  public
    procedure InitDepartmentsLookup;
  end;

var
  Form18: TForm18;

implementation

{$R *.dfm}

procedure TForm18.btnOpenClick(Sender: TObject);
var
  anItem: TListItem;
begin
  InitDepartmentsLookup;

  SQLConnection1.Connected := True;
  SQLDataSet1.Open;
  while not SQLDataSet1.EOF do
  begin
    anItem := ListView1.Items.Add;
    anItem.Caption := SQLDataSet1 ['LAST_NAME'] + ' ' +
      SQLDataSet1 ['FIRST_NAME'];
    // lookup
    anItem.SubItems.Append(
      slistDepartments.Values [SQLDataSet1 ['DEPT_NO']]);
    // plain
    anItem.SubItems.Append(SQLDataSet1 ['JOB_CODE']);
    SQLDataSet1.Next;
  end;
end;

procedure TForm18.FormCreate(Sender: TObject);
begin
  slistDepartments := TStringList.Create;
end;

procedure TForm18.InitDepartmentsLookup;
begin
  SQLConnection1.Connected := True;
  SQLDataSet2.Open;
  while not SQLDataSet2.EOF do
  begin
    slistDepartments.Values [SQLDataSet2 ['DEPT_NO']] :=
      SQLDataSet2 ['DEPARTMENT'];
    SQLDataSet2.Next;
  end;
end;

end.
