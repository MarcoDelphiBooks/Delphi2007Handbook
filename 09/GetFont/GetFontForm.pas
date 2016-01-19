unit GetFontForm;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Menus, StdCtrls, MyFormFont;

type
  TForm8 = class(TForm)
    btnGetFont: TButton;
    Label1: TLabel;
    PopupMenu1: TPopupMenu;
    one1: TMenuItem;
    two1: TMenuItem;
    three1: TMenuItem;
    procedure btnGetFontClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form8: TForm8;

implementation

{$R *.dfm}

procedure TForm8.btnGetFontClick(Sender: TObject);
begin
  Label1.Caption := Font.Name + ':' + IntToStr (Font.Size); 
end;

end.
