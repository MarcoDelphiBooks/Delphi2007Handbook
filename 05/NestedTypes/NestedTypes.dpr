program NestedTypes;

{$APPTYPE CONSOLE}

uses
  SysUtils,
  NestedClass in 'NestedClass.pas';


begin
  with TOne.Create do
  begin
    Hello;
    writeln (foo);
  end;

  with TOne.TInside.Create do
  begin
    InsideHello;
  end;

  readln;
end.
