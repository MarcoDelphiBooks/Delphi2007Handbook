unit Assert_Form;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls;

type
  TForm1 = class(TForm)
    Button1: TButton;
    Label1: TLabel;
    Button2: TButton;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

type
  TTest = class
  private
    pt: pointer;
  protected
    procedure Invariant;  
  public
    constructor Create;
    destructor Destroy; override;
    procedure SetData (n: Integer);
    function GetData: Integer;
  end;

implementation

{$R *.dfm}

procedure TForm1.Button1Click(Sender: TObject);
begin
  Label1.Caption := Button1.Caption;
  Assert (Label1.Caption <> '');
  Button1.Caption := '';
end;

{ TTest }

constructor TTest.Create;
begin
  GetMem (pt, 100);
  Invariant;
end;

destructor TTest.Destroy;
begin
  FreeMem (pt);
  inherited;
end;

function TTest.GetData: Integer;
begin
  Invariant;
  Result := PInteger (pt)^;
end;

procedure TTest.Invariant;
begin
  // the pointer MUST be initialzed
  Assert (pt <> nil);
end;

procedure TTest.SetData(n: Integer);
begin
  Invariant;
  // a precondition: value must be positive
  Assert (n > 0);
  PInteger (pt)^ := n;
end;

procedure TForm1.Button2Click(Sender: TObject);
var
  test: TTest;
begin
  test := TTest.Create;
  try
    test.SetData (-1);
  finally
    test.Free;
  end;
end;

end.
