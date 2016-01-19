unit saxphilo;

interface

uses
  xdom, classes, DBClient, SysUtils, StrUtils;

type
  TDataSaxHandler = class (TXmlStandardHandler)
  protected
    stack: TStringList;
    strCurrent: string;
    cds1: TClientDataSet;
  public
    constructor Create(aOwner: TComponent; cds: TClientDataSet); reintroduce;

    function endElement(const sender: TXmlCustomProcessorAgent;
                        const locator: TdomStandardLocator;
                              namespaceURI,
                              tagName: wideString): TXmlParserError; override;
    function PCDATA(const sender: TXmlCustomProcessorAgent;
                    const locator: TdomStandardLocator;
                          data: wideString): TXmlParserError; override;
    function startElement(const sender: TXmlCustomProcessorAgent;
                          const locator: TdomStandardLocator;
                                namespaceURI,
                                tagName: wideString;
                                attributes: TdomNameValueList): TXmlParserError; override;
    destructor Destroy; override;

  end;

implementation

function RemoveWhites (str: WideString): WideString;
var
  i: integer;
begin
  for i := 1 to Length (str) do
    if Ord(str[i]) >= 32 then
      Result := Result + str [i];
  Result := Trim (Result);
end;

{ TDataSaxHandler }

constructor TDataSaxHandler.Create(aOwner: TComponent; cds: TClientDataSet);
begin
  inherited Create (aOwner);
  stack := tstringlist.create;
  cds1 := cds;
end;

destructor TDataSaxHandler.Destroy;
begin
  stack.Free;
  inherited;
end;

function TDataSaxHandler.endElement(const sender: TXmlCustomProcessorAgent;
  const locator: TdomStandardLocator; namespaceURI,
  tagName: wideString): TXmlParserError;
begin
  if tagName = 'ROW' then
    cds1.Post;
  if stack.Count > 2 then
  begin
    cds1.Edit;
    cds1.FieldByName (tagName).AsString := strCurrent;
  end;
  stack.Delete (stack.Count - 1);
  Result := nil;
end;

function TDataSaxHandler.PCDATA(const sender: TXmlCustomProcessorAgent;
  const locator: TdomStandardLocator; data: wideString): TXmlParserError;
begin
  strCurrent := strCurrent + RemoveWhites(data);
  Result := nil;
end;

function TDataSaxHandler.startElement(
  const sender: TXmlCustomProcessorAgent;
  const locator: TdomStandardLocator; namespaceURI, tagName: wideString;
  attributes: TdomNameValueList): TXmlParserError;
begin
  stack.Add (tagName);
  if tagName = 'ROW' then
    cds1.Insert;
  strCurrent := '';
  Result := nil;
end;

end.
