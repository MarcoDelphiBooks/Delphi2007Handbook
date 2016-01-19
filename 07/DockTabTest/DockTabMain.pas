unit DockTabMain;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, Tabs, DockTabSet, StdCtrls;

type
  TFormDockTab = class(TForm)
    DockTabSet1: TDockTabSet;
    Panel1: TPanel;
    Panel2: TPanel;
    btnOtherMemo: TButton;
    btnOtherForm: TButton;
    procedure btnOtherFormClick(Sender: TObject);
    procedure btnOtherMemoClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormDockTab: TFormDockTab;

implementation

uses
  OtherMemo, OtherForm;

{$R *.dfm}

procedure TFormDockTab.btnOtherMemoClick(Sender: TObject);
begin
  if not Assigned (FormMemo) then
    FormMemo := TFormMemo.Create (Application);
  FormMemo.Show;
  FormMemo.ManualDock(Panel1);
end;

procedure TFormDockTab.btnOtherFormClick(Sender: TObject);
begin
  if not Assigned (FormForm) then
    FormForm := TFormForm.Create (Application);
  FormForm.Show;
  FormForm.ManualDock(Panel1);
end;

end.
