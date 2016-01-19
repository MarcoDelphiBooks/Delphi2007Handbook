unit ForInWin32Form;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Contnrs;

type
  TForm3 = class(TForm)
    Button1: TButton;
    Button2: TButton;
    ListBox1: TListBox;
    Button3: TButton;
    Button4: TButton;
    Button5: TButton;
    Button6: TButton;
    Button7: TButton;
    Button8: TButton;
    procedure Button8Click(Sender: TObject);
    procedure Button7Click(Sender: TObject);
    procedure Button6Click(Sender: TObject);
    procedure Button5Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    aList: TObjectList;
  public
    { Public declarations }
  end;

var
  Form3: TForm3;

implementation

{$R *.dfm}

procedure TForm3.FormCreate(Sender: TObject);
begin
  aList := TObjectList.Create;
  aList.Add (self);
  aList.Add (Button1);
  aList.Add (Button4);
end;

procedure TForm3.Button1Click(Sender: TObject);
var
  enum: TListEnumerator;
begin
  enum := aList.GetEnumerator;
  while enum.MoveNext do
    Listbox1.Items.Add(TObject(enum.Current).ClassName);
  enum.Free; // update for book
end;

procedure TForm3.Button2Click(Sender: TObject);
var
  Obj: TObject;
  pt: Pointer;
begin
//  for Obj in aList do
//    Listbox1.Items.Add(Obj.ClassName);
  for pt in aList do
    Listbox1.Items.Add(TObject(pt).ClassName);
end;

procedure TForm3.Button3Click(Sender: TObject);
var
  s: string;
  ch: Char;
begin
  s := 'Hello world';
  for ch in s do
    Listbox1.Items.Add(ch);
end;

type
  TDayOfWeek = (dwMon, dwTue, dwWed, dwThu, dwFri, dwSat, dwSun);
  TDaysOfWeek = set of TDayOfWeek;

procedure TForm3.Button4Click(Sender: TObject);
var
  days: TDaysOfWeek;
  day: TDayOfWeek;
begin
  days := [dwMon, dwThu, dwSat];
  for day in days do
    ListBox1.Items.Add (IntToStr (Ord (day)));
end;

procedure TForm3.Button5Click(Sender: TObject);
var
  C: TComponent;
begin
  for C in Self do
    ListBox1.Items.Add (C.Name);
end;

procedure TForm3.Button6Click(Sender: TObject);
var
  s: string;
begin
  for s in ListBox1.Items do
    ShowMessage (s);
  // adding strings to the list we are enumerating would
  // cause infinite recursion and a stack overflow
end;

type
  TNumbersRange = class
  private
  type
    TNumbersRangeEnum = class
    private
      nPos: Integer;
      fRange: TNumbersRange;
    public
      constructor Create (aRange: TNumbersRange);
      function MoveNext: Boolean;
      function GetCurrent: Integer;
      property Current: Integer read GetCurrent;
    end;
  private
    FnStart: Integer;
    FnEnd: Integer;
  public
    function GetEnumerator: TNumbersRangeEnum;
    procedure set_nEnd(const Value: Integer);
    procedure set_nStart(const Value: Integer);
    property nStart: Integer read FnStart write set_nStart;
    property nEnd: Integer read FnEnd write set_nEnd;
  end;

procedure TForm3.Button7Click(Sender: TObject);
var
  aRange: TNumbersRange;
  I: Integer;
begin
  aRange := TNumbersRange.Create;
  aRange.nStart := 10;
  aRange.nEnd := 23;

  for I in aRange do
    ListBox1.Items.Add (IntToStr (I));
end;

{ TNumbersRange }

function TNumbersRange.GetEnumerator: TNumbersRangeEnum;
begin
  Result := TNumbersRangeEnum.Create (Self);
end;

procedure TNumbersRange.set_nEnd(const Value: Integer);
begin
  FnEnd := Value;
end;

procedure TNumbersRange.set_nStart(const Value: Integer);
begin
  FnStart := Value;
end;

{ TNumbersRange.TNumbersRangeEnum }

constructor TNumbersRange.TNumbersRangeEnum.Create(aRange: TNumbersRange);
begin
  inherited Create;
  fRange := aRange;
  nPos := fRange.nStart - 1;
end;

function TNumbersRange.TNumbersRangeEnum.GetCurrent: Integer;
begin
  Result := nPos;
end;

function TNumbersRange.TNumbersRangeEnum.MoveNext: Boolean;
begin
  Inc (nPos);     
  Result := nPos <= fRange.nEnd;
end;

procedure TForm3.Button8Click(Sender: TObject);
//var
//  list: ArrayList;
//  Obj: &Object;
begin
//  list := ArrayList.Create;
//  list.Add(TObject (109));
//  list.Add (Button8);
//  list.Add ('Hello Delphi');
  // the following "odd" line causes a runtime error when enumerating!
  // list.Add (list);

//  for Obj in list do
//    ListBox1.Items.Add (Obj.ToString);
end;

end.
