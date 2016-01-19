program ForInContainer;

uses
  Forms,
  ForInContainerForm in 'ForInContainerForm.pas' {ContainerForm};

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TContainerForm, ContainerForm);
  Application.Run;
end.
