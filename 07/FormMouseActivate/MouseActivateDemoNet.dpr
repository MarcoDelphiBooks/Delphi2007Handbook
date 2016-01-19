program MouseActivateDemoNet;

{%DelphiDotNetAssemblyCompiler '$(SystemRoot)\microsoft.net\framework\v1.1.4322\system.drawing.dll'}

uses
  Forms,
  MouseActivateForm in 'MouseActivateForm.pas' {Form11};

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TForm11, Form11);
  Application.Run;
end.
