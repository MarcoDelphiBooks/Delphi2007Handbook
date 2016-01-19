unit MouseActivateForm;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtDlgs;

type
  TForm11 = class(TForm)
    OpenTextFileDialog1: TOpenTextFileDialog;
    Button1: TButton;
    procedure Button1Click(Sender: TObject);
    procedure FormMouseActivate(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y, HitTest: Integer;
      var MouseActivate: TMouseActivate);
    procedure FormMouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form11: TForm11;

implementation

{$R *.dfm}

procedure TForm11.FormMouseDown(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
  Canvas.Brush.Color := clRed;
  Canvas.Ellipse(x-5,y-5,x+5,y+5);
end;

procedure TForm11.FormMouseActivate(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y, HitTest: Integer;
  var MouseActivate: TMouseActivate);
begin
  if not Application.Active or not Active then
    MouseActivate := maActivateAndEat
  else
    MouseActivate := maDefault;
end;

procedure TForm11.Button1Click(Sender: TObject);
begin
  OpenTextFileDialog1.Execute;
end;

end.
