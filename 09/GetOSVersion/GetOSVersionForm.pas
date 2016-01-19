unit GetOSVersionForm;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls;

type
  TForm8 = class(TForm)
    btnGetVersion: TButton;
    Memo1: TMemo;
    procedure btnGetVersionClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form8: TForm8;

implementation

{$R *.dfm}

function IsVista: Boolean;
begin
  Result := lobyte(loword (GetVersion)) = 6;
end;

procedure TForm8.btnGetVersionClick(Sender: TObject);
begin
  Memo1.Lines.Add ('IsVista: ' + BoolToStr (IsVista, True));
  Memo1.Lines.Add ('Win32MajorVersion: ' + IntToStr(Win32MajorVersion));
  Memo1.Lines.Add ('Win32MinorVersion: ' + IntToStr(Win32MinorVersion));
  Memo1.Lines.Add ('Win32BuildNumber: ' + IntToStr(Win32BuildNumber));
  // any use?
  // Memo1.Lines.Add ('Win32CSDVersion: ' +  Win32CSDVersion);
end;
                       
end.
