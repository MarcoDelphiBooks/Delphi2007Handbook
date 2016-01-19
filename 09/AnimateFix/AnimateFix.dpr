program AnimateFix;

uses
  Forms,
  AnimateForm in 'AnimateForm.pas' {Form19};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TForm19, Form19);
  Application.Run;
end.
