program ListboxHelper;

uses
  Forms,
  ListboxHelperForm in 'ListboxHelperForm.pas' {Form10},
  Vcl.Themes,
  Vcl.Styles;

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  TStyleManager.TrySetStyle('Golden Graphite');
  Application.CreateForm(TForm10, Form10);
  Application.Run;
end.
