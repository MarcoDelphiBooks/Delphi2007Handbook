program DockTabTest;

uses
  Forms,
  DockTabMain in 'DockTabMain.pas' {FormDockTab},
  OtherForm in 'OtherForm.pas' {FormForm},
  OtherMemo in 'OtherMemo.pas' {FormMemo};

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TFormDockTab, FormDockTab);
  Application.Run;
end.
