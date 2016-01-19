unit OpenDialogForm;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls;

type
  TForm18 = class(TForm)
    FileOpenDialog1: TFileOpenDialog;
    btnOpen: TButton;
    procedure btnOpenClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form18: TForm18;

implementation

{$R *.dfm}

procedure TForm18.btnOpenClick(Sender: TObject);
begin
  FileOpenDialog1.Execute;
end;

end.
