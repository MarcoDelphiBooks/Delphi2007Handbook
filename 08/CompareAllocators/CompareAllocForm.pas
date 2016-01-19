unit CompareAllocForm;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Spin, xmldom, XMLIntf, oxmldom, XMLDoc, ComCtrls, Contnrs,
  DB, DBClient;

  const
    MaxAlloc = 1000000;

type
  TForm6 = class(TForm)
    btnAlloc: TButton;
    btnDOM: TButton;
    XMLDocument1: TXMLDocument;
    ProgressBar1: TProgressBar;
    Memo1: TMemo;
    btnStringList: TButton;
    ClientDataSet1: TClientDataSet;
    btnClientDataSet: TButton;
    procedure btnAllocClick(Sender: TObject);
    procedure btnDOMClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure btnStringListClick(Sender: TObject);
    procedure btnClientDataSetClick(Sender: TObject);
  private
    objList: array [1..MaxAlloc] of TObject;
  public
    { Public declarations }
  end;

var
  Form6: TForm6;

implementation

uses
  saxphilo, XDom, Math;

{$R *.dfm}

type
  TBaseObject = class
  public
    class function NewInstance: TObject; override;
    procedure FreeInstance; override;
  end;

  TBigObject = class (TBaseObject)
  public
    nn: array [1..100] of Integer;
  end;

  TSmallObject = class (TBaseObject)
  public
    nn: array [1..5] of Integer;
  end;

var
  nCount: Integer;

procedure TForm6.btnAllocClick(Sender: TObject);
var
  I, J: Integer;
  t1: TDateTime;
begin
  ProgressBar1.Max := MaxAlloc div 1000;
  randomize;
  t1 := Now;

  Screen.Cursor := crHourglass;
  try
    for I := 1 to MaxAlloc do
    begin
      if random (5) = 0 then
        objList [I] := TBigObject.Create
      else
        objList [I] := TSmallObject.Create;

      if I mod 1000 = 0 then
      begin
        ProgressBar1.Position := I div 1000;
        for j := max (0, 1 + I - 2000) to I - 1000 do
        begin
          if random (50) > 0 then
            FreeAndNil (objList[J]);
        end;
        for J := 1 + I - 1000 to I do
        begin
          if random (3) > 0 then
            FreeAndNil (objList[J]);
        end;
      end;
    end;
    // optionally free all
    // for I := 1 to MaxAlloc do
    //  FreeAndNil (objList[I]);
  finally
    Screen.Cursor := crDefault;
  end;
  t1 := Now - t1;
  Memo1.Lines.Add (IntToStr (nCount) + ' left - ' +
    FormatDateTime ('ss.zzz', t1));
end;

{ TBaseObject }

procedure TBaseObject.FreeInstance;
begin
  Dec (nCount);
  inherited;
end;

class function TBaseObject.NewInstance: TObject;
begin
  Result := inherited NewInstance;
  Inc (nCount);
end;

procedure TForm6.btnClientDataSetClick(Sender: TObject);
var
  t1: TDateTime;
  agent: TXmlStandardProcessorAgent;
  reader: TXmlStandardDocReader;
  filename: string;
  I: Integer;
begin
  ProgressBar1.Max := 5;
  t1 := now;
  Screen.Cursor := crHourglass;
  try
    for I := 1 to 5 do
    begin
      ClientDataSet1.CreateDataSet;
      ClientDataSet1.Open;

      filename := ExtractFilePath (Application.Exename) + 'data2.xml';
      agent := TXmlStandardProcessorAgent.Create(nil);
      reader:= TXmlStandardDocReader.Create (nil);
      try
        reader.NextHandler := TDataSaxHandler.Create (nil, ClientDataSet1);
        agent.reader := reader;
        agent.processFile(filename, filename);
        ProgressBar1.Position := I;
      finally
        agent.free;
        reader.free;
      end;
      ClientDataSet1.EmptyDataSet;
      ClientDataSet1.Close;
    end;
  finally
    Screen.Cursor := crDefault;
  end;
  t1 := now - t1;
  Memo1.Lines.Add(FormatDateTime ('ss.zzz', t1));
end;

procedure TForm6.btnDOMClick(Sender: TObject);
var
  I: Integer;
  t1: TDateTime;
begin
  ProgressBar1.Max := 10;
  XMLDocument1.FileName := 'data2.xml';
  t1 := Now;
  Screen.Cursor := crHourglass;
  try
    for I := 1 to 10 do
    begin
      XMLDocument1.Active := True;
      XMLDocument1.Active := False;
      ProgressBar1.Position := I;
    end;
  finally
    Screen.Cursor := crDefault;
  end;
  t1 := Now - t1;
  Memo1.Lines.Add (FormatDateTime ('ss.zzz', t1));
end;

procedure TForm6.btnStringListClick(Sender: TObject);
var
  I: Integer;
  t1: TDateTime;
  sl: TStringList;
begin
  ProgressBar1.Max := 100;
  t1 := Now;
  Screen.Cursor := crHourglass;
  try
    for I := 1 to 100 do
    begin
      sl := TStringList.Create;
      try
        sl.LoadFromFile('data2.xml');
      finally
        sl.Free;
      end;
      ProgressBar1.Position := I;
    end;
  finally
    Screen.Cursor := crDefault;
  end;
  t1 := Now - t1;
  Memo1.Lines.Add (FormatDateTime ('ss.zzz', t1));
end;

procedure TForm6.FormCreate(Sender: TObject);
begin
  Caption := Caption + ' - ' +
    ExtractFileName (Application.ExeName);
end;

end.
