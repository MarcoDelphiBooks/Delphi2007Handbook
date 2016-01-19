program trayicon;

uses
  Forms,
  trayicon_form in 'trayicon_form.pas' {Form4};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskBar := True;
  Application.ShowMainForm := False;
  Application.CreateForm(TForm4, Form4);
  Application.Run;
end.
