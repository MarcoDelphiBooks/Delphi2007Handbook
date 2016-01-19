program SealedAndFinalWin32;

{$APPTYPE CONSOLE}

uses
  SysUtils;

type
  TBase = class 
    procedure A; virtual;
  end;

  TDeriv1 = class {sealed} (TBase)
    procedure A; override; {final;}
  end;

  // uncomment "sealed" and you'll get the error:
  // "Cannot extend sealed class TDeriv1"

  // uncomment "final" and you'll get the error:
  // "Cannot override a final method"

  TDeriv2 = class (TDeriv1)
    procedure A; override;
  end;


{ TBase }

procedure TBase.A;
begin

end;

{ TDeriv2 }

procedure TDeriv2.A;
begin
  inherited;

end;

{ TDeriv1 }

procedure TDeriv1.A;
begin
  inherited;

end;

begin
  Writeln ('sealed...');
  Readln;
end.

