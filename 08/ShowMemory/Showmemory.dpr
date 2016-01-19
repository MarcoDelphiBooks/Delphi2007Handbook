program Showmemory;

uses
  Forms,
  ShowMemoryForm in 'ShowMemoryForm.pas' {Form8};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TForm8, Form8);
  Application.Run;
end.
