program GetFont;

uses
  Forms,
  GetFontForm in 'GetFontForm.pas' {Form8},
  MyFormFont in 'MyFormFont.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TForm8, Form8);
  Application.Run;
end.
