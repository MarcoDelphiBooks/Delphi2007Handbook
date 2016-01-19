program vistatest2007;

uses
  Forms,
  vistatest_form in 'vistatest_form.pas' {FormVistaTest};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TFormVistaTest, FormVistaTest);
  Application.Run;
end.
