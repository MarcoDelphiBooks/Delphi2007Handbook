unit Marco.Records;

interface

type
  TMyRecord = record
  private
    one: string;
    two: Integer;
    three: Char;
  public
    procedure Print;
    // constructor Create; // causes error
    constructor Create (aString: string);
    procedure Init (aValue: Integer);
  end;

type
  TAnotherRecord = packed record
  private
    one: string;
    two: Integer;
    three: Char;
  public
    procedure Print;
    procedure Init (aValue: Integer);
  end;

implementation

uses
  SysUtils;

{ TMyRecord }

constructor TMyRecord.Create (aString: string);
begin
  writeln ('TMyRecord.Create called');
  one := aString;
  two := 2;
  three := '3';
end;

procedure TMyRecord.Init(aValue: Integer);
begin
  two := aValue;
  one := IntToStr (aValue);
end;

procedure TMyRecord.Print;
begin
  writeln (one, ' - ' , two, ' - ', three);
end;

{ TAnotherRecord }

procedure TAnotherRecord.Init(aValue: Integer);
begin
  two := aValue;
  one := IntToStr (aValue);
end;

procedure TAnotherRecord.Print;
begin
  writeln (one, ' - ' , two, ' - ', three);
end;

end.
