unit HelpInsightDemoForm;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls;

type
  /// <summary>The main form of the application</summary>
  TForm1 = class(TForm)
  var
    /// <summary>This is the main output label for user messages</summary>
    Label1: TLabel;
    /// <summary>Edit for the input</summary>
    Edit1: TEdit;
    Button1: TButton;
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    /// <summary>This is a custom method, of course</summary>
    procedure CustomMethod;
    /// <summary>This is another method...</summary>
    procedure AnotherMethod;
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

procedure TForm1.AnotherMethod;
begin
  // do nothing
end;

procedure TForm1.Button1Click(Sender: TObject);
begin
  Label1.Caption := 'Hello';
  Custom

end;








procedure TForm1.CustomMethod;
begin
  // do nothing
end;

end.
