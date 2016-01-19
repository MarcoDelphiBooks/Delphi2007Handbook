unit DemoClasses;

interface

type
  TMyTest = class
  private
    FNumber: Integer;
    procedure SetNumber(const Value: Integer);
  public
    property Number: Integer read FNumber write SetNumber;
    function Text: string;
    procedure Add (n: Integer);
    procedure Double;
  end;

implementation

uses
  SysUtils;

{ TMyTest }

procedure TMyTest.Add(n: Integer);
begin
  if (n < 0) then
    raise Exception.Create ('You can only add positive numebrs!');
  Inc (fNumber, n);
end;

procedure TMyTest.Double;
begin
  fNumber := fNumber * 2;
end;

procedure TMyTest.SetNumber(const Value: Integer);
begin
  FNumber := Value;
end;

function TMyTest.Text: string;
begin
  Result := IntToStr (fNumber) + '*';
end;

end.
