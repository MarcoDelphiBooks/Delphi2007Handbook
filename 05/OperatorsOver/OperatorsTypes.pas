unit OperatorsTypes;

interface

uses
  SysUtils;

type
  TMioRecord = record
    x: integer;
  end;

  TPointRecord = record
  private
    x, y: Integer;
  public
    procedure SetValue (x1, y1: Integer);
    class operator Add (a: TPointRecord; b: TMioRecord): TPointRecord;
    class operator Add (b: TMioRecord; a: TPointRecord): TPointRecord;
    // class operator Add (a, b: TMioRecord): TMioRecord;
    class operator Add (a, b: TPointRecord): TPointRecord;
    class operator Explicit (a: TPointRecord) : string;
    class operator Implicit (x1: Integer): TPointRecord;
  end;

implementation

{ TPointRecord }

class operator TPointRecord.Add(a, b: TPointRecord): TPointRecord;
begin
  Result.x := a.x + b.x;
  Result.y := a.y + b.y;
end;

class operator TPointRecord.Add(a: TPointRecord;
  b: TMioRecord): TPointRecord;
begin

end;

class operator TPointRecord.Add(b: TMioRecord;
  a: TPointRecord): TPointRecord;
begin

end;

class operator TPointRecord.Explicit(a: TPointRecord): string;
begin
  Result := Format('(%d:%d)', [a.x, a.y]);
end;

class operator TPointRecord.Implicit(x1: Integer): TPointRecord;
begin
  Result.x := x1;
  Result.y := 10;
end;

procedure TPointRecord.SetValue(x1, y1: Integer);
begin
  x := x1;
  y := y1;
end;

end.
