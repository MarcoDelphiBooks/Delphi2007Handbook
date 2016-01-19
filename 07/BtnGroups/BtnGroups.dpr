program BtnGroups;

uses
  Forms,
  BtnGroupsForm in 'BtnGroupsForm.pas' {FormBtnGroups};

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TFormBtnGroups, FormBtnGroups);
  Application.Run;
end.
