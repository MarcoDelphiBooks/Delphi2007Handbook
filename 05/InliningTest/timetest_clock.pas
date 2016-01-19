unit timetest_clock;

interface

uses
  Classes, SysUtils, Windows;

type
  TTimeTest = class
  private
    init: TDateTime;
  public
    constructor Create;
    function Elapsed: string;
    destructor Destroy; override;
  end;

implementation

uses
  DateUtils;

{ TTimeTest }

constructor TTimeTest.Create;
begin
  inherited;
  init := Now;
  // Screen.Cursor := crHourGlass;
end;

destructor TTimeTest.Destroy;
begin
  // Screen.Cursor := crDefault;
  inherited;
end;

function TTimeTest.Elapsed: string;
begin
  Result := FormatFloat ('###,###,###', MilliSecondsBetween (Now, init));
end;

end.
 