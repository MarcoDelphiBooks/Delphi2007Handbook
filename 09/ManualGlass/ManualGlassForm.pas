unit ManualGlassForm;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls;

type
  TForm13 = class(TForm)
    btnGlass: TButton;
    Shape1: TShape;
    procedure btnGlassClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form13: TForm13;

implementation

{$R *.dfm}

uses
  DwmAPI, UxTheme;

procedure TForm13.btnGlassClick(Sender: TObject);
var
  Margins1: UxTheme.TMargins;
begin
  Margins1.cxLeftWidth := 0;
  Margins1.cxRightWidth := 0;
  Margins1.cyTopHeight := 40;
  Margins1.cyBottomHeight := 0;

  Shape1.Brush.Color := clBlack;
  Shape1.Align := alTop;
  Shape1.Height := Margins1.cyTopHeight;

  DwmExtendFrameIntoClientArea(Handle, Margins1);

  btnGlass.DoubleBuffered := True;
end;

end.
