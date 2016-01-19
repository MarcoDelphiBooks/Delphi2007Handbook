program AutoRtti;

uses
  Forms,
  AutoRttiForm in 'AutoRttiForm.pas' {FormAutoRtti};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TFormAutoRtti, FormAutoRtti);
  Application.Run;
end.
