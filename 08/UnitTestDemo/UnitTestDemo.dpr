program UnitTestDemo;

uses
  Forms,
  DemoForm in 'DemoForm.pas' {Form2},
  DemoClasses in 'DemoClasses.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TForm2, Form2);
  Application.Run;
end.
