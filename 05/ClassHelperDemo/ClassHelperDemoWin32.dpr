Program ClassHelperDemoWin32;

{$APPTYPE CONSOLE}

uses
  SysUtils;

type
  TMyObject = class
  private
    Value: Integer;
    Text: string;
  public
    procedure Increase;
    procedure Show;
  end;

  TMyObjectHelper = class helper for TMyObject
  public
    procedure Show2;
  end;

  TMyNewObject = class (TMyObject)
  private
    Value2: Integer;
  public
    procedure Show2;
    procedure Increase2;
 end;

{ TMyObject }

procedure TMyObject.Increase;
begin
  Inc (Value);
end;

procedure TMyObject.Show;
begin
  writeln ('object show');
end;

{ TMyObjectHelper }

procedure TMyObjectHelper.Show2;
begin
  WriteLn (Text + ' ' + IntToStr (Value) + ' -- ' +
    ClassName);
end;

procedure TMyNewObject.Show2;
begin
  WriteLn (Text + ' ' + IntToStr (Value) + ' -- ' +
    ClassName);
end;


var
  Obj: TMyObject;

{ TMyNewObject }

procedure TMyNewObject.Increase2;
begin
  Inc (value2);
end;

begin
  Obj := TMyObject.Create;
  Obj.Text := 'foo';
  // Obj.Increase2;
  Obj.Show;
  Obj.Show2;

  readln;
end.
