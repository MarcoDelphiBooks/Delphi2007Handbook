program RecordsDemoWin32;

{$APPTYPE CONSOLE}

uses
  SysUtils,
  DateUtils,
  Marco.Records in 'Marco.Records.pas',
  Marco.ClassSpeed in 'Marco.ClassSpeed.pas',
  Marco.RecordSpeed in 'Marco.RecordSpeed.pas';

var
  myrec: TMyRecord;
  another: TAnotherRecord;
  t: TDateTime;
  ms: Integer;

begin
  myrec.Init (220);
  myrec := TMyRecord.Create ('hello');
  myrec.Print;

  another.Init (100);
  another.Print;

  t := Now;
  writeln (FloatToStr (Marco.RecordSpeed.ComputeAverageDistance));
  ms := MilliSecondsBetween (Now, t);
  writeln ('records: ' + IntToStr (ms));

  t := Now;
  writeln (FloatToStr (Marco.ClassSpeed.ComputeAverageDistance));
  ms := MilliSecondsBetween (Now, t);
  writeln ('classes: ' + IntToStr (ms));

  readln;
end.
