program NestedTypesWin32;

{$APPTYPE CONSOLE}

uses
  SysUtils,
  NestedClass in 'NestedClass.pas';

begin
  with TOne.Create do
  begin
    Hello;
    writeln (TOne.foo);
  end;

  with TOne.TInside.Create do
  begin
    InsideHello;
  end;

  readln;

  end.
