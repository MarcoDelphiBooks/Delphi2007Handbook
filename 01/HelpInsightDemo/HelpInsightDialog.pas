unit HelpInsightDialog;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls;

type
  TForm2 = class(TForm)
    Button1: TButton;
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form2: TForm2;

implementation

{$R *.dfm}

uses
  HelpINsightDemoForm;

procedure TForm2.Button1Click(Sender: TObject);
begin
  Form1.Label1.Caption := 'Now';
  Form1.Edit1.Text := 'Hey';
end;

end.
