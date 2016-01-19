unit DbxDirectForm;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, WideStrings, DB, SqlExpr, StdCtrls;

type
  TFormDirect = class(TForm)
    SQLConnection1: TSQLConnection;
    btnConnection: TButton;
    Memo1: TMemo;
    btnCommand: TButton;
    btnReader: TButton;
    procedure btnConnectionClick(Sender: TObject);
    procedure btnCommandClick(Sender: TObject);
    procedure btnReaderClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormDirect: TFormDirect;

implementation

{$R *.dfm}

uses
  DBXCommon, SQLTimSt, FMTBcd;

procedure TFormDirect.btnConnectionClick(Sender: TObject);
var
  dbxConn: TDBXConnection;
begin
  SQLConnection1.Connected := True;
  dbxConn := SQLConnection1.DBXConnection;
  Memo1.Lines.Add ('Class: ' + dbxConn.ClassName);
  Memo1.Lines.Add ('QuoteChar: ' + dbxConn.DatabaseMetaData.QuoteChar);
  Memo1.Lines.Add ('');
end;

procedure TFormDirect.btnReaderClick(Sender: TObject);
var
  dbxConn: TDBXConnection;
  dbxCommand: TDBXCommand;
  dbxReader: TDBXReader;
  dbxVal: TDBXValue;
  I: Integer;
  strValue: string;
begin
  SQLConnection1.Connected := True;
  dbxConn := SQLConnection1.DBXConnection;

  dbxCommand := dbxConn.CreateCommand;
  try
    dbxCommand.Text := 'select * from employee';
    dbxReader := dbxCommand.ExecuteQuery;
    try
      Memo1.Lines.Add ('Class: ' + dbxReader.ClassName);
      // move to first record
      if dbxReader.Next then
      begin
        // read given field
        dbxVal := dbxReader.Value[dbxReader.GetOrdinal('LAST_NAME')];
        Memo1.Lines.Add ('Name: ' + dbxVal.GetAnsiString);
        Memo1.Lines.Add ('');

        // read all fields
        for I := 0 to dbxReader.ColumnCount - 1 do
        begin
          dbxVal := dbxReader.Value[I];
          if not dbxVal.IsNull then
            case dbxVal.ValueType.DataType of
              TDBXDataTypes.AnsiStringType: strValue := dbxVal.GetAnsiString;
              TDBXDataTypes.Int32Type: strValue := IntToStr (dbxVal.GetInt32);
              TDBXDataTypes.Int16Type: strValue := IntToStr (dbxVal.GetInt16);
              TDBXDataTypes.DoubleType: strValue := FloatToStr (dbxVal.GetDouble);
              TDBXDataTypes.TimeStampType: strValue :=
                SQLTimeStampToStr (ShortDateFormat, dbxVal.GetTimeStamp);
              TDBXDataTypes.BcdType: strValue := BcdToStr (dbxVal.GetBCD);
            else
              strValue := '<undef type: ' +
                IntToStr (dbxVal.ValueType.DataType) + '>';
            end
          else
            strValue := '<null>';
            
          Memo1.Lines.Add (IntToStr (I) + ': ' + strValue + ' [' +
            dbxVal.ClassName + ']');
        end;
        Memo1.Lines.Add ('');
      end;

      // read all names
      while dbxReader.Next do
      begin
        dbxVal := dbxReader.Value[dbxReader.GetOrdinal('LAST_NAME')];
        Memo1.Lines.Add ('Name: ' + dbxVal.GetAnsiString);
      end;
      Memo1.Lines.Add ('');

    finally
      dbxReader.Free;
    end;
  finally
    FreeAndNil (dbxCommand);
  end;
end;

procedure TFormDirect.btnCommandClick(Sender: TObject);
var
  dbxConn: TDBXConnection;
  dbxCommand: TDBXCommand;
begin
  SQLConnection1.Connected := True;
  dbxConn := SQLConnection1.DBXConnection;

  dbxCommand := dbxConn.CreateCommand;
  try
    Memo1.Lines.Add ('Class: ' + dbxCommand.ClassName);
    dbxCommand.Text := 'update employee ' +
      'set FIRST_NAME = ''Robert'' ' +
      'where EMP_NO < 5';
    dbxCommand.ExecuteQuery;
    Memo1.Lines.Add ('Rows Affected: ' +
      IntToStr(dbxCommand.RowsAffected));
  finally
    FreeAndNil (dbxCommand);
  end;
end;

end.
