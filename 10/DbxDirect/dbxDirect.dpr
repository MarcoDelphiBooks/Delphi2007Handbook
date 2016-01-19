program dbxDirect;

uses
  Forms,
  DbxDirectForm in 'DbxDirectForm.pas' {FormDirect};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TFormDirect, FormDirect);
  Application.Run;
end.
