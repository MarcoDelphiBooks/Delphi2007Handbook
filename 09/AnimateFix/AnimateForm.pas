unit AnimateForm;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ComCtrls {, ShellAnimations};

type
  TForm19 = class(TForm)
    Animate1: TAnimate;
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form19: TForm19;

implementation

{$R *.dfm}

{$R CopyFiles.res }

procedure TForm19.FormCreate(Sender: TObject);
begin
  Animate1.Active := True;
end;

end.
