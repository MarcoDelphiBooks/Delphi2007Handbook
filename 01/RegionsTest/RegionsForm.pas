unit RegionsForm;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls;

type
  TForm1 = class(TForm)
    Button1: TButton;
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

{$REGION 'extra code'}

// this is code you want to hide by default
procedure TestMessage;
begin
  ShowMessage ('Test');
end;

{$ENDREGION}

procedure TForm1.Button1Click(Sender: TObject);
begin
  TestMessage;
end;

end.
