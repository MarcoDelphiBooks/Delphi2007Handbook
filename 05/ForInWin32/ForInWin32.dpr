program ForInWin32;


uses
  Forms,
  ForInWin32Form in 'ForInWin32Form.pas' {Form3};

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TForm3, Form3);
  Application.Run;
end.
