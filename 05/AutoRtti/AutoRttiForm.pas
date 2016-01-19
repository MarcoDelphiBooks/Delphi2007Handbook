unit AutoRttiForm;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls;

type
//// {$M+}
  TMyTestClass = class
  private
    FValue: Integer;
    procedure SetValue(const Value: Integer);
  published
    property Value: Integer read FValue write SetValue;
  end;

  TFormAutoRtti = class(TForm)
    btnReadProp: TButton;
    Memo1: TMemo;
    procedure btnReadPropClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
  private
    test1: TMyTestClass;
  public
    { Public declarations }
  end;

var
  FormAutoRtti: TFormAutoRtti;

implementation

{$R *.dfm}

uses
  TypInfo;

procedure TFormAutoRtti.btnReadPropClick(Sender: TObject);
begin
  Memo1.Lines.Add (GetPropValue (test1, 'Value'));
end;

{ TMyTestClass }

procedure TMyTestClass.SetValue(const Value: Integer);
begin
  FValue := Value;
end;

procedure TFormAutoRtti.FormCreate(Sender: TObject);
begin
  test1 := TMyTestClass.Create;
  test1.Value := 100;
end;

procedure TFormAutoRtti.FormDestroy(Sender: TObject);
begin
  test1.Free;
end;

end.
