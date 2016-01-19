unit OtherMemo;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls;

type
  TFormMemo = class(TForm)
    Memo1: TMemo;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormMemo: TFormMemo;

implementation

{$R *.dfm}

procedure TFormMemo.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  ManualFloat(Rect(0, 0, 0, 0));
  Action := caFree;
  FormMemo := nil;
end;

end.
