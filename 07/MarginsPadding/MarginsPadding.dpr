program MarginsPadding;

uses
  Forms,
  MarginsPaddingForm in 'MarginsPaddingForm.pas' {Form5};

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TForm5, Form5);
  Application.Run;
end.
