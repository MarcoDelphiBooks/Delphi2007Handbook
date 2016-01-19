program RegionsTest;

uses
  Forms,
  RegionsForm in 'RegionsForm.pas' {Form1};

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TForm1, Form1);
  Application.Run;
end.
