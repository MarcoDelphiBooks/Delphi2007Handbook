unit BtnGroupsForm;

interface

{$WARN UNIT_PLATFORM OFF}

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ButtonGroup, ImgList, CategoryButtons;

type
  TFormBtnGroups = class(TForm)
    ButtonGroup1: TButtonGroup;
    ImageList1: TImageList;
    CategoryButtons1: TCategoryButtons;
    procedure ButtonGroup1ButtonClicked(Sender: TObject; Index: Integer);
    procedure CategoryButtons1ButtonClicked(Sender: TObject;
      const Button: TButtonItem);
    procedure ButtonGroup1Items3Click(Sender: TObject);
    procedure ButtonGroup1Items2Click(Sender: TObject);
    procedure ButtonGroup1Items1Click(Sender: TObject);
    procedure ButtonGroup1Items0Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormBtnGroups: TFormBtnGroups;

implementation

{$R *.dfm}

procedure TFormBtnGroups.ButtonGroup1Items0Click(Sender: TObject);
begin
  with ButtonGroup1.Items.Add do
    Caption := 'btn' + IntToStr (ButtonGroup1.Items.Count);
end;

procedure TFormBtnGroups.ButtonGroup1Items1Click(Sender: TObject);
begin
  ButtonGroup1.ButtonWidth := ButtonGroup1.ButtonWidth * 2;
end;

procedure TFormBtnGroups.ButtonGroup1Items2Click(Sender: TObject);
begin
  ButtonGroup1.ButtonWidth := ButtonGroup1.ButtonWidth div 2;
end;

procedure TFormBtnGroups.ButtonGroup1Items3Click(Sender: TObject);
begin
  if gboShowCaptions in ButtonGroup1.ButtonOptions then
    ButtonGroup1.ButtonOptions := ButtonGroup1.ButtonOptions - [gboShowCaptions]
  else
    ButtonGroup1.ButtonOptions := ButtonGroup1.ButtonOptions + [gboShowCaptions];
end;

procedure TFormBtnGroups.CategoryButtons1ButtonClicked(Sender: TObject;
  const Button: TButtonItem);
begin
  ShowMessage ('Pressed ' + Button.Caption + ' of ' + Button.Category.Caption);
end;

procedure TFormBtnGroups.ButtonGroup1ButtonClicked(Sender: TObject;
  Index: Integer);
begin
  ShowMessage (ButtonGroup1.Items[Index].Caption);
end;

end.
