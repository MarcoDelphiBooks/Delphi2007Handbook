object Form18: TForm18
  Left = 0
  Top = 0
  Caption = 'DbxReadOnly'
  ClientHeight = 412
  ClientWidth = 672
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object ListView1: TListView
    Left = 24
    Top = 47
    Width = 617
    Height = 337
    Columns = <
      item
        Caption = 'Name'
        Width = 250
      end
      item
        Caption = 'Department'
        Width = 200
      end
      item
        Caption = 'Job'
        Width = 100
      end>
    SortType = stText
    TabOrder = 0
    ViewStyle = vsReport
  end
  object btnOpen: TButton
    Left = 24
    Top = 16
    Width = 75
    Height = 25
    Caption = 'Open'
    TabOrder = 1
    OnClick = btnOpenClick
  end
  object SQLConnection1: TSQLConnection
    ConnectionName = 'IBCONNECTION'
    DriverName = 'Interbase'
    GetDriverFunc = 'getSQLDriverINTERBASE'
    LibraryName = 'dbxint30.dll'
    LoginPrompt = False
    Params.Strings = (
      'DriverName=Interbase'
      
        'Database=C:\Program Files\Common Files\CodeGear Shared\Data\Empl' +
        'oyee.GDB'
      'RoleName=RoleName'
      'User_Name=sysdba'
      'Password=masterkey'
      'ServerCharSet='
      'SQLDialect=3'
      'ErrorResourceFile='
      'LocaleCode=0000'
      'BlobSize=-1'
      'CommitRetain=False'
      'WaitOnLocks=True'
      'Interbase TransIsolation=ReadCommited'
      'Trim Char=False'
      'HostName=')
    TableScope = [tsSynonym, tsSysTable, tsTable, tsView]
    VendorLib = 'gds32.dll'
    Left = 176
    Top = 16
  end
  object SQLDataSet1: TSQLDataSet
    CommandText = 'select * from employee'
    DbxCommandType = 'Dbx.SQL'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = SQLConnection1
    Left = 264
    Top = 16
  end
  object SQLDataSet2: TSQLDataSet
    SchemaName = 'PUBLIC'
    CommandText = 'select * from department'
    DbxCommandType = 'Dbx.SQL'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = SQLConnection1
    Left = 360
    Top = 16
  end
end
