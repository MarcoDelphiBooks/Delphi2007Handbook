unit ListboxHelperForm;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls;

type
  TForm10 = class(TForm)
    ListBox1: TListBox;
    Button1: TButton;
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form10: TForm10;

implementation

{$R *.dfm}

type
  TListboxHelper = class helper for TListBox
    function ItemIndexValue: string;
  end;

procedure TForm10.Button1Click(Sender: TObject);
begin
  ShowMessage (ListBox1.ItemIndexValue);
//  ShowMessage (
//    ListBox1.Items [ListBox1.ItemIndex]);
end;

{ TListboxHelper }

function TListboxHelper.ItemIndexValue: string;
begin
  Result := '';
  if ItemIndex >= 0 then
    Result := Items [ItemIndex];
end;

end.
