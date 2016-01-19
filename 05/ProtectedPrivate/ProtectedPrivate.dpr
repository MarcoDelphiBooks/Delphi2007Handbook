program ProtectedPrivate;

uses
  SysUtils;

type
  TBase = class
  private
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
  writeln (one + two); // if "strict priovate" error: Undeclared identifier: one
end;

var
  deriv: TDeriv;
  base: TBase;

begin
  base := TBase.Create;
  deriv := TDeriv.Create;
  base.one := 10;
  // base.two := 30; // error: Cannot access protected symbol TBase.two
  deriv.one := 10;
  // deriv.two := 30; // error was: Cannot access protected symbol TBase.two
  deriv.Test;
end.

