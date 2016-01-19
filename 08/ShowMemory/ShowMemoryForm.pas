unit ShowMemoryForm;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls;

type
  TForm8 = class(TForm)
    Button1: TButton;
    Button2: TButton;
    Button3: TButton;
    Image1: TImage;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
  private
    procedure ShowBigPixel(col: TColor; I: Integer);
    { Private declarations }
  public
    sList: TStringList;
  end;

var
  Form8: TForm8;

implementation

{$R *.dfm}

procedure TForm8.Button1Click(Sender: TObject);
var
  AMemoryMap: TMemoryMap;
  cs: TChunkStatus;
  I: Integer;
  col: TColor;
begin
  Screen.Cursor := crHourGlass;
  try
    col := clBlack; // only to avoid warning
    GetMemoryMap (AMemoryMap);

    for I := low(aMemoryMap) to high(aMemoryMap) do
    begin
      cs := AMemoryMap[I];
      case cs of
        csUnallocated: col := clWhite;
        csAllocated: col := clBlue;
        csReserved: col := clRed;
        csSysAllocated: col := clBlack;
        csSysReserved: col := clYellow;
      end;
      ShowBigPixel(col, I);
    end;
  finally
    Screen.Cursor := crDefault;
  end;
end;

procedure TForm8.Button2Click(Sender: TObject);
var
  I: Integer;
begin
  Screen.Cursor := crHourGlass;
  try
    for I := 1 to 200 do
      TButton.Create (self);
  finally
    Screen.Cursor := crDefault;
  end;
end;

procedure TForm8.Button3Click(Sender: TObject);
var
  I: Integer;
  str: string;
begin
  if not Assigned (sList) then
    sList := TStringList.Create;
  Screen.Cursor := crHourGlass;
  try
    setLength (str, 100000000); // 100 MB
    for I := 1 to Length (str) do
      str[I] := 'k';
    sList.Add (str); // keep it around...
  finally
    Screen.Cursor := crDefault;
  end;
end;

procedure TForm8.ShowBigPixel(col: TColor; I: Integer);
begin
  Image1.Canvas.Pixels[I mod 256 * 2 - 1, I div 256 * 2 - 1] := col;
  Image1.Canvas.Pixels[I mod 256 * 2, I div 256 * 2 - 1] := col;
  Image1.Canvas.Pixels[I mod 256 * 2 - 1, I div 256 * 2] := col;
  Image1.Canvas.Pixels[I mod 256 * 2, I div 256 * 2] := col;
end;

end.
