program HelpInsightDemo;

uses
  Forms,
  HelpInsightDemoForm in 'HelpInsightDemoForm.pas' {Form1},
  HelpInsightDialog in 'HelpInsightDialog.pas' {Form2};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TForm1, Form1);
  Application.CreateForm(TForm2, Form2);
  Application.Run;
end.
