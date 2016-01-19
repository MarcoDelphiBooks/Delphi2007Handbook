program ProtectedPrivate;

uses
  SysUtils;

type
  TBase = class
  {strict }private
    one: Integer;
  strict protected
    two: integer;
  end;

  TDeriv = class (TBase)
  public
    procedure Test;
  end;

procedure TDeriv.Test;
begin
  writeln (one + two);
end;

var
  deriv: TDeriv;
  base: TBase;

begin
  base := TBase.Create;
  deriv := TDeriv.Create;
   base.one := 10; // if "strict private" will show error: Cannot access private symbol TBase.one
  // base.two := 30; // error: Cannot access protected symbol TBase.two
  deriv.one := 10;
  // deriv.two := 30; // error:
  deriv.Test;
end.

