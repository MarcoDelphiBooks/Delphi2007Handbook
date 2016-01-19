unit PoolingThread;

interface

uses
  Classes, SysUtils, Dialogs;

type
  TDBAccessThread = class(TThread)
  private
    ConnectionTime, TotalTime: TDateTime;
    IsPooled: Boolean;
  protected
    procedure Execute; override;
    procedure AddTime;
  public
    constructor Create (Pooled: Boolean);
  end;

implementation

uses
  ThreadDM, PoolingForm;

{ Important: Methods and properties of objects in visual components can only be
  used in a method called using Synchronize, for example,

      Synchronize(UpdateCaption);

  and UpdateCaption could look like,

    procedure TDBAccessThread.UpdateCaption;
    begin
      Form1.Caption := 'Updated in a thread';
    end; }

{ TDBAccessThread }

procedure TDBAccessThread.AddTime;
begin
  Form6.ConnectionTime := Form6.ConnectionTime + ConnectionTime;
  Form6.TotalTime := Form6.TotalTime + TotalTime;
  Form6.ProgressBar1.Position :=
    Form6.ProgressBar1.Position + 1;
end;


constructor TDBAccessThread.Create(Pooled: Boolean);
begin
  IsPooled := Pooled;
  Inherited Create (False);
end;

procedure TDBAccessThread.Execute;
var
  tDM: ThreadDM.TDataModule1;
  t1: TDateTime;
  I: Integer;
begin
  for I := 1 to 5 do
  begin
    //sleep (random (500));
    ConnectionTime := 0;
    TotalTime := 0;
    tDM := ThreadDM.TDataModule1.Create(nil);
    try try
      if IsPooled then
        tDM.SQLDataSet1.SQLConnection := tDM.SQLConnectionPooling
      else
        tDM.SQLDataSet1.SQLConnection := tDM.SQLConnectionPlain;
      // now connect (and time it)
      t1 := Now;
      tDM.SQLDataSet1.SQLConnection.Connected := True;
      ConnectionTime := Now - t1;

      // grab some data
      tDM.SQLDataSet1.Open;
      while not tDM.SQLDataSet1.Eof do
        tDM.SQLDataSet1.Next;
      tDM.SQLDataSet1.Close;

      // close all and log
      tDM.SQLDataSet1.SQLConnection.Connected := False;
      TotalTime := Now - t1;
      Synchronize(AddTime)
    finally
      tDM.Free;
    end;
    except on E: Exception do
      ShowMessage (E.Message);
    end;
  end;
end;

end.
