unit Marco.ClassSpeed;

interface

type
  TClassPoint = class
  private
    x: Integer;
    y: Integer;
    // I'm wasting some memory on purpose,
    // to make the data footprint larger
    sq1, sq2, square: Double;
  public
    constructor Create (ax, ay: Integer);
    function Distance (aPoint: TClassPoint): Double;
  end;

  function ComputeDistance: Double;
  function ComputeAverageDistance: Double;

implementation

function ComputeDistance: Double;
var
  pt1, pt2: TClassPoint;
begin
  pt1 := TClassPoint.Create (10, 20); // random (100), random (100));
  pt2 := TClassPoint.Create (20, 40); // random (100), random (100));
  Result := pt1.Distance(pt2);
{$IFNDEF CLR}
  pt1.Free;
  pt2.Free;
{$ENDIF}
end;

const
  nTimes = 10000000;

function ComputeAverageDistance: Double;
var
  I: Integer;
begin
  Result := 0;
  for I := 1 to nTimes do
    Result := Result + ComputeDistance;
  Result := Result / nTimes;
end;

{ TRecordPoint }

constructor TClassPoint.Create(ax, ay: Integer);
begin
  inherited Create;
  x := ax;
  y := ay;
end;

function TClassPoint.Distance(aPoint: TClassPoint): Double;
begin
  // real algorithm, little difference
  sq1 := sqr (apoint.x - x);
  sq2 := sqr (apoint.y - y);
  square := sq1 + sq2;
  Result := Sqrt(square);
end;

initialization
  Randomize;

end.
