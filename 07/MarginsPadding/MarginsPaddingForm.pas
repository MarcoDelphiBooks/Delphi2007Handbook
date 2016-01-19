unit MarginsPaddingForm;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, StdCtrls;

type
  TForm5 = class(TForm)
    Panel1: TPanel;
    Panel2: TPanel;
    Button1: TButton;
    Button2: TButton;
    Button3: TButton;
    procedure Button3Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form5: TForm5;

implementation

{$R *.dfm}

procedure IncreaseAll (margins: TMargins);
begin
  margins.SetBounds(margins.Left + 1, margins.Top + 1,
    margins.Right + 1, margins.Bottom + 1);
end;

procedure TForm5.Button1Click(Sender: TObject);
var
  aPadd: TPadding;
begin
  aPadd := Padding;
  IncreaseAll (aPadd);
  Padding := aPadd;
end;

procedure TForm5.Button2Click(Sender: TObject);
var
  aMarg: TMargins;
begin
  aMarg := Panel1.Margins;
  IncreaseAll (aMarg);
  Panel1.Margins := aMarg;
end;

procedure TForm5.Button3Click(Sender: TObject);
var
  aMarg: TMargins;
begin
  aMarg := Panel2.Margins;
  IncreaseAll (aMarg);
  Panel2.Margins := aMarg;
end;

end.
