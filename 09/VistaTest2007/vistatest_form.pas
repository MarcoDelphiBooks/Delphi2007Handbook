unit vistatest_form;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls;

type
  TFormVistaTest = class(TForm)
    TaskDialog1: TTaskDialog;
    Button1: TButton;
    Button2: TButton;
    OpenDialog1: TOpenDialog;
    FileOpenDialog1: TFileOpenDialog;
    Button3: TButton;
    Label1: TLabel;
    ListBox1: TListBox;
    Timer1: TTimer;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure Timer1Timer(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormVistaTest: TFormVistaTest;

implementation

{$R *.dfm}

procedure TFormVistaTest.Button1Click(Sender: TObject);
begin
  UseLatestCommonDialogs := True;
  MessageDlg('message text', mtINformation, [mbok], 0);
  TaskMessageDlg('title', 'message text', mtINformation, [mbok], 0);
end;

procedure TFormVistaTest.Button2Click(Sender: TObject);
begin
  TaskDialog1.Execute;
end;

procedure TFormVistaTest.Button3Click(Sender: TObject);
begin
  UseLatestCommonDialogs := True;
  OpenDialog1.Execute;
end;

procedure TFormVistaTest.FormCreate(Sender: TObject);
begin
  DoubleBuffered := True;
  Button1.DoubleBuffered := True;
  Button2.DoubleBuffered := True;
  Button3.DoubleBuffered := True;
end;

procedure TFormVistaTest.Timer1Timer(Sender: TObject);
begin
  ListBox1.items.Insert(0, TImeToStr (now));
end;

end.
