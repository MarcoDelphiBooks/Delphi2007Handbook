unit OperatorsForm;

interface

{$WARN UNIT_PLATFORM OFF}

uses
  SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls;

type
  TForm1 = class(TForm)
    Button1: TButton;
    Button3: TButton;
    Button2: TButton;
    procedure Button3Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

uses
  OperatorsTypes;

procedure TForm1.Button1Click(Sender: TObject);
var
  a, b, c: TPointRecord;
begin
  a.SetValue(10, 10);
  b := 30;
  c := a + b;
  ShowMessage (string(c));
end;

procedure TForm1.Button2Click(Sender: TObject);
var
  a, b, c: TPointRecord;
begin
  a.SetValue(50, 10);
  c := a + 30;
  ShowMessage (string(c));
  c := 50 + 30;
  ShowMessage (string(c));
  c := 50 + TPointRecord(30);
  ShowMessage (string(c));

  // equivalent code
  c := a + TPointRecord(30);
  ShowMessage (string(c));
  c := TPointRecord (50 + 30);
  ShowMessage (string(c));
  c := TPointRecord(50) + TPointRecord(30);
  ShowMessage (string(c));
end;

procedure TForm1.Button3Click(Sender: TObject);
var
  a, b, c: TPointRecord;
begin
  a.SetValue(10, 10);
  b := 30;
  c := TPointRecord.&&op_Addition(a, b);
  ShowMessage (string(c));
end;

end.
