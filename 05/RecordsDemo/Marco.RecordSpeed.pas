unit Marco.RecordSpeed;

interface

type
  TRecordPoint = record
  private
    x: Integer;
    y: Integer;
    // I'm wasting some memory on purpose,
    // to make the data footprint larger
    sq1, sq2, square: Double;
  public
    constructor Create (ax, ay: Integer);
    procedure SetCoord (ax, ay: Integer);
    function Distance (var aPoint: TRecordPoint): Double;
  end;

  function ComputeDistance1: Double;
  function ComputeDistance2: Double;
  function ComputeAverageDistance: Double;

implementation

function ComputeDistance1: Double;
var
  pt1: TRecordPoint;
  pt2: TRecordPoint;
begin
  pt1 := TRecordPoint.Create (10, 20);// random (100), random (100));
  pt2 := TRecordPoint.Create (20, 40);// random (100), random (100));
  Result := pt1.Distance(pt2);
end;

function ComputeDistance2: Double;
var
  pt1: TRecordPoint;
  pt2: TRecordPoint;
begin
  pt1.SetCoord(10, 20);// random (100), random (100));
  pt2.SetCoord(20, 40);// random (100), random (100));
  Result := pt1.Distance(pt2);
end;

const
  nTimes = 10000000;

function ComputeAverageDistance: Double;
var
  I: Integer;
begin
  Result := 0;
  for I := 1 to nTimes do
    Result := Result + ComputeDistance2;
  Result := Result / nTimes;
end;

{ TRecordPoint }

constructor TRecordPoint.Create(ax, ay: Integer);
begin
  x := ax;
  y := ay;
end;

function TRecordPoint.Distance(var aPoint: TRecordPoint): Double;
begin
  // real algorithm, little difference
  sq1 := sqr (apoint.x - x);
  sq2 := sqr (apoint.y - y);
  square := sq1 + sq2;
  Result := Sqrt(square);
end;

procedure TRecordPoint.SetCoord(ax, ay: Integer);
begin
  x := ax;
  y := ay;
end;

initialization
  Randomize;

end.
