unit ForInContainerForm;

interface

{$WARN UNIT_PLATFORM OFF}

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls;

type
  TContainerForm = class(TForm)
    btnTest: TButton;
    Button1: TButton;
    Button2: TButton;
    procedure btnTestClick(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure Button2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  ContainerForm: TContainerForm;

implementation

{$R *.dfm}

uses
  Contnrs;

type
  TEmunObjectListEnumerator = class
  private
    idCurrent: Integer;
    list: TObjectList;
    function GetCurrent: TObject;
  public
    constructor Create (aList: TObjectList);
  published
    function MoveNext: Boolean;
    property Current: TObject read GetCurrent;
  end;

  TEnumObjectList = class (TObjectList)
  public
    function GetEnumerator: TEmunObjectListEnumerator;
  end;

  TObjectListHelper = class helper for TObjectList
  public
    function GetEnumerator: TEmunObjectListEnumerator;
  end;

procedure TContainerForm.btnTestClick(Sender: TObject);
var
  anObjectList: TObjectList;
  pt: Pointer;
begin
  anObjectList := TObjectList.Create;
  try
    anObjectList.Add (self);
    anObjectList.Add (Sender);

    for pt in anObjectList do
      ShowMessage (TObject(pt).ClassName);
  finally
    anObjectList.Free;
  end;
end;

{ TEmunObjectListEnumerator }

constructor TEmunObjectListEnumerator.Create(
  aList: TObjectList);
begin
  list := aLIst;
  idCurrent := -1;
end;

function TEmunObjectListEnumerator.GetCurrent: TObject;
begin
  Result := list [idCurrent];
end;

function TEmunObjectListEnumerator.MoveNext: Boolean;
begin
  Inc (idCurrent);
  if idCurrent = list.Count then
    Result := False
  else
    Result := True;
end;

{ TEnumObjectList }

function TEnumObjectList.GetEnumerator: TEmunObjectListEnumerator;
begin
  Result := TEmunObjectListEnumerator.Create(self);
end;

procedure TContainerForm.Button1Click(Sender: TObject);
var
  // anObjectList: TObjectList;
  anObjectList: TEnumObjectList;
  anObj: TObject;
begin
  anObjectList := TEnumObjectList.Create;
  try
    anObjectList.Add (self);
    anObjectList.Add (Sender);

    for anObj in anObjectList do
      ShowMessage (anObj.ClassName);
  finally
    anObjectList.Free;
  end;
end;


procedure TContainerForm.Button2Click(Sender: TObject);
var
  anObjectList: TObjectList;
  anObj: TObject;
begin
  anObjectList := TEnumObjectList.Create;
  try
    anObjectList.Add (self);
    anObjectList.Add (Sender);

    for anObj in anObjectList do
      ShowMessage (anObj.ClassName);
  finally
    anObjectList.Free;
  end;
end;

procedure TContainerForm.FormCreate(Sender: TObject);
begin

end;

{ TObjectListHelper }

function TObjectListHelper.GetEnumerator: TEmunObjectListEnumerator;
begin
  Result := TEmunObjectListEnumerator.Create(self);
end;

end.
