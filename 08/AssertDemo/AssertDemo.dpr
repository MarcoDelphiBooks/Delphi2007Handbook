program AssertDemo;

uses
  Forms,
  Assert_Form in 'Assert_Form.pas' {Form1};

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TForm1, Form1);
  Application.Run;
end.
