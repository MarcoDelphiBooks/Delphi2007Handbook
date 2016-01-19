unit PoolingForm;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, WideStrings, FMTBcd, StdCtrls, DB, SqlExpr, ComCtrls;

type
  TForm6 = class(TForm)
    btnPooling: TButton;
    ProgressBar1: TProgressBar;
    Button2: TButton;
    btnPlain: TButton;
    Memo1: TMemo;
    procedure btnPoolingClick(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure btnPlainClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    ConnectionTime, TotalTime: TDateTime;
  end;

var
  Form6: TForm6;

implementation

{$R *.dfm}

uses
  PoolingThread, ThreadDM;

procedure TForm6.btnPlainClick(Sender: TObject);
var
  I: Integer;
begin
  Memo1.Lines.Add ('(Plain)');
  ConnectionTime := 0;
  TotalTime := 0;
  ProgressBar1.Position := 0;
  for I := 1 to 2 do
    TDBAccessThread.Create(False);
end;

procedure TForm6.btnPoolingClick(Sender: TObject);
var
  I: Integer;
begin
  Memo1.Lines.Add ('(Pooling)');
  ConnectionTime := 0;
  TotalTime := 0;
  ProgressBar1.Position := 0;
  for I := 1 to 2 do
    TDBAccessThread.Create(True);
end;

procedure TForm6.Button2Click(Sender: TObject);
begin
  Memo1.Lines.Add ('Connect: ' + FormatDateTime('ss.zzz', ConnectionTime));
  Memo1.Lines.Add ('Total: ' + FormatDateTime('ss.zzz', TotalTime));
end;

procedure TForm6.FormCreate(Sender: TObject);
var
  tDM: ThreadDM.TDataModule1;
begin
  // connect once to avoid a slow first connection
  tDM := ThreadDM.TDataModule1.Create(nil);
  try
    tDM.SQLConnectionPooling.Connected := True;
    tDM.SQLConnectionPooling.Connected := False;
    tDM.SQLConnectionPlain.Connected := True;
    tDM.SQLConnectionPlain.Connected := False;
  except
    // stop exception
    ShowMessage ('Database configuration error');
  end;
end;

end.
