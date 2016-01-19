program PoolingDemo;

uses
  Forms,
  PoolingForm in 'PoolingForm.pas' {Form6},
  PoolingThread in 'PoolingThread.pas',
  ThreadDM in 'ThreadDM.pas' {DataModule1: TDataModule};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TForm6, Form6);
  Application.Run;
end.
