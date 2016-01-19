program recordswithstrings;

{$APPTYPE CONSOLE}

uses
  SysUtils;

type
  TRecordWithString = record
    Value: Integer;
    Name: string;
  end;

var
  rec1, rec2: TRecordWithString;

function GetRefCount (const s: string) : Integer;
var
  RefCountPointer: Pointer;
begin
  if Pointer(s) <> nil then
  begin
    RefCountPointer :=
      Pointer (Integer (Pointer (s)) - 8);
    Result := Integer (RefCountPointer^);
  end
  else
    Result := 0;
end;

begin
  rec1.Value := 3;
  rec1.Name := 'hello';

  writeln ('refcount: ' + IntToStr (GetRefCount(rec1.Name)));
  rec2 := rec1;
  writeln ('refcount: ' + IntToStr (GetRefCount(rec1.Name)));
  rec1.Name[3] := 'x';
  writeln ('refcount: ' + IntToStr (GetRefCount(rec1.Name)));

  readln;
end.
