unit DemoForm;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls;

type
  TForm2 = class(TForm)
    Button1: TButton;
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form2: TForm2;

implementation

{$R *.dfm}

uses
  DemoClasses;

procedure TForm2.Button1Click(Sender: TObject);
var
  test: TMyTest;
begin
  test := TMyTest.Create;
  try
    test.Number := 10;
    test.Add (10);
    ShowMessage (test.Text);
  finally
    test.Free;
  end;
end;

end.
