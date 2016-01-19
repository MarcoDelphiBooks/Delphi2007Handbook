program InliningTest;

uses
  Forms,
  InliningForm in 'InliningForm.pas' {Form3},
  timetest_clock in 'timetest_clock.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TForm3, Form3);
  Application.Run;
end.
