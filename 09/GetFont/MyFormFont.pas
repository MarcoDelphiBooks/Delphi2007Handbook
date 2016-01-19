unit MyFormFont;

interface

uses
  Forms, SysUtils, Classes;

type
  TForm = class (Forms.TForm)
  public
    constructor Create(AOwner: TComponent); override;
  end;

implementation

uses
  Windows;

function IsVista: Boolean;
begin
  Result := lobyte(loword (GetVersion)) = 6;
end;
                        
{ TForm }

constructor TForm.Create(AOwner: TComponent);
begin
  inherited;

  if IsVista then
  begin
    Font.Name := 'Segoe UI';
    Font.Size := 9;
  end;
end;

end.
