unit ThreadDM;

interface

uses
  SysUtils, Classes, FMTBcd, DB, SqlExpr, WideStrings;

type
  TDataModule1 = class(TDataModule)
    SQLDataSet1: TSQLDataSet;
    SQLConnectionPooling: TSQLConnection;
    SQLConnectionPlain: TSQLConnection;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  DataModule1: TDataModule1;

implementation

{$R *.dfm}

end.
