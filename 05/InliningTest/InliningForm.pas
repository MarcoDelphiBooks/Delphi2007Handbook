unit InliningForm;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls;

type
  /// form principale
  TForm3 = class(TForm)
    bntLenght: TButton;
    btnLengthInline: TButton;
    btnMaxInline: TButton;
    Memo1: TMemo;
    btnMax: TButton;
    /// calcola il massimo
    procedure btnMaxClick(Sender: TObject);
    procedure btnMaxInlineClick(Sender: TObject);
    procedure btnLengthInlineClick(Sender: TObject);
    procedure bntLenghtClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  /// ecco la form
  Form3: TForm3;

implementation

{$R *.dfm}

uses
  timetest_clock, Math;

const
  LoopCount = 20000000;
var
  ssample : string;

{$INLINE ON}

function LengthStdcall (const s: string): Longint;
begin
  Result := Integer(S);
  if Result <> 0 then
    Result := PInteger(Result-4)^;
end;

procedure TForm3.bntLenghtClick(Sender: TObject);
var
  ttt: TTimeTest;
  I, J: Integer;
begin
  ssample:= 'sample string';
  J := 0;
  ttt := TTimeTest.Create;
  try
    for I := 0 to LoopCount do
      Inc (J, LengthStdcall (ssample));
    memo1.Lines.Add ('Length ' + ttt.Elapsed + '[' + IntToStr (J) + ']');
  finally
    FreeAndNil (ttt);
  end;
end;

procedure TForm3.btnLengthInlineClick(Sender: TObject);
var
  ttt: TTimeTest;
  I, J: Integer;
begin
  ssample:= 'sample string';
  J := 0;
  ttt := TTimeTest.Create;
  try
    for I := 0 to LoopCount do
      Inc (J, Length (ssample));
    memo1.Lines.Add ('Inline ' + ttt.Elapsed + '[' + IntToStr (J) + ']');
  finally
    FreeAndNil (ttt);
  end;
end;

procedure TForm3.btnMaxInlineClick(Sender: TObject);
var
  ttt: TTimeTest;
  I, J: Integer;
begin
  J := 0;
  ttt := TTimeTest.Create;
  try
    for I := 0 to LoopCount do
      J := Max (I, J);
    memo1.Lines.Add ('Max ' + ttt.Elapsed + '[' + IntToStr (J) + ']');
  finally
    FreeAndNil (ttt);
  end;
end;

{$INLINE OFF}
procedure TForm3.btnMaxClick(Sender: TObject);
var
  ttt: TTimeTest;
  I, J: Integer;
begin
  J := 0;
  ttt := TTimeTest.Create;
  try
    for I := 0 to LoopCount do
      J := Max (I, J);
    memo1.Lines.Add ('Off ' + ttt.Elapsed + '[' + IntToStr (J) + ']');
  finally
    FreeAndNil (ttt);
  end;
end;

end.
