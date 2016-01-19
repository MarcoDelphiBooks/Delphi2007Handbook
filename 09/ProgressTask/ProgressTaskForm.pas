unit ProgressTaskForm;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ComCtrls, StdCtrls, ExtCtrls;

type
  TForm6 = class(TForm)
    btnDo: TButton;
    ProgressBar1: TProgressBar;
    btnDoTask: TButton;
    TaskDialog1: TTaskDialog;
    btnCancel: TButton;
    Timer1: TTimer;
    procedure btnDoClick(Sender: TObject);
    procedure TaskDialog1Timer(Sender: TObject; TickCount: Cardinal;
      var Reset: Boolean);
    procedure btnDoTaskClick(Sender: TObject);
    procedure btnCancelClick(Sender: TObject);
    procedure TaskDialog1ButtonClicked(Sender: TObject;
      ModalResult: TModalResult; var CanClose: Boolean);
    procedure Timer1Timer(Sender: TObject);
  private
    I, Tot: Integer;
  public
    { Public declarations }
  end;

var
  Form6: TForm6;

implementation

{$R *.dfm}

function IsPrime (N: Integer): Boolean;
var
  Test: Integer;
begin
  IsPrime := True;
  for Test := 2 to N - 1 do
    if (N mod Test) = 0 then
    begin
      IsPrime := False;
      break; {jump out of the for loop}
    end;
end;

const
  Max = 1000;
  Block = 100;

procedure TForm6.btnDoClick(Sender: TObject);
begin
  Timer1.Enabled := true;
  btnDo.Enabled := False;
  I := 0;
  Tot := 0;
end;

procedure TForm6.btnDoTaskClick(Sender: TObject);
begin
  TaskDialog1.OnTimer := TaskDialog1Timer;
  TaskDialog1.Execute;
  I := 0;
  Tot := 0;
end;

procedure TForm6.btnCancelClick(Sender: TObject);
begin
  Timer1.Enabled := False;
  btnDo.Enabled := True;
end;

procedure TForm6.TaskDialog1ButtonClicked(Sender: TObject;
  ModalResult: TModalResult; var CanClose: Boolean);
begin
  TaskDialog1.OnTimer := nil;
end;

procedure TForm6.TaskDialog1Timer(Sender: TObject; TickCount: Cardinal;
  var Reset: Boolean);
var
  J: Integer;
begin
  for J := 1 to Block do
  begin
    if IsPrime (I) then
      Tot := Tot + I;
    TaskDialog1.ProgressBar.Position := I * 100 div Max;
    Inc (I);
  end;
  if I >= Max then
  begin
    TaskDialog1.OnTimer := nil;
    ShowMessage (IntToStr (Tot));
    TaskDialog1.Title := IntToStr (Tot);
  end;
end;

procedure TForm6.Timer1Timer(Sender: TObject);
var
  J: Integer;
begin
  for J := 1 to Block do
  begin
    if IsPrime (I) then
      Tot := Tot + I;
    ProgressBar1.Position := I * 100 div Max;
    Inc (I);
  end;

  if I = Max then
  begin
    Timer1.Enabled := False;
    ShowMessage (IntToStr (Tot));
    btnDo.Enabled := True;
  end;
end;

end.
