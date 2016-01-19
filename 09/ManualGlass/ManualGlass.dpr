program ManualGlass;

uses
  Forms,
  ManualGlassForm in 'ManualGlassForm.pas' {Form13};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TForm13, Form13);
  Application.Run;
end.
