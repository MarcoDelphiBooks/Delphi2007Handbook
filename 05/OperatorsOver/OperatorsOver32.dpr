program OperatorsOver32;

{$WARN UNIT_PLATFORM OFF}

uses
  SysUtils,
  Forms,
  OperatorsForm in 'OperatorsForm.pas' {Form1},
  OperatorsTypes in 'OperatorsTypes.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskBar := True;
  Application.CreateForm(TForm1, Form1);
  Application.Run;
end.
