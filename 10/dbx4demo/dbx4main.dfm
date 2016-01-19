object Form1: TForm1
  Left = 0
  Top = 0
  Caption = 'dbx4Demo'
  ClientHeight = 389
  ClientWidth = 580
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object Button1: TButton
    Left = 264
    Top = 32
    Width = 241
    Height = 25
    Caption = 'connection factory + command types'
    TabOrder = 0
    OnClick = Button1Click
  end
  object ListBox1: TListBox
    Left = 264
    Top = 64
    Width = 241
    Height = 81
    ItemHeight = 13
    TabOrder = 1
  end
  object Button2: TButton
    Left = 32
    Top = 96
    Width = 75
    Height = 25
    Caption = 'tables'
    TabOrder = 2
    OnClick = Button2Click
  end
  object ListBox2: TListBox
    Left = 32
    Top = 127
    Width = 169
    Height = 218
    ItemHeight = 13
    TabOrder = 3
  end
  object Button3: TButton
    Left = 144
    Top = 48
    Width = 75
    Height = 25
    Caption = 'activate'
    TabOrder = 4
    OnClick = Button3Click
  end
  object EMPLOYEE: TSQLDataSet
    CommandText = 'EMPLOYEE'
    CommandType = ctTable
    DbxCommandType = 'Dbx.Table'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = TEST
    Left = 101
    Top = 37
  end
  object TEST: TSQLConnection
    ConnectionName = 'test'
    DriverName = 'INTERBASE'
    GetDriverFunc = 'getSQLDriverINTERBASE'
    LibraryName = 'dbxint30.dll'
    LoginPrompt = False
    Params.Strings = (
      'DelegateConnection=dbxtraceconnection'
      'DriverName=INTERBASE'
      'DRIVERUNIT=DBXDynalink'
      'DRIVERPACKAGELOADER=TDBXDynalinkDriverLoader'
      'DRIVERPACKAGE=DBXCommonDriver110.bpl'
      'DRIVERASSEMBLYLOADER=Borland.Data.TDBXDynalinkDriverLoader'
      
        'DRIVERASSEMBLY=Borland.Data.DbxCommonDriver,Version=11.0.5000.0,' +
        'Culture=neutral,PublicKeyToken=a91a7c5705831a4f'
      'GETDRIVERFUNC=getSQLDriverINTERBASE'
      
        'DATABASE=localhost:C:\Program Files\Firebird\Firebird_2_0\exampl' +
        'es\empbuild\EMPLOYEE.FDB'
      'ROLENAME=RoleName'
      'USER_NAME=sysdba'
      'PASSWORD=masterkey'
      'SERVERCHARSET='
      'SQLDIALECT=3'
      'BLOBSIZE=-1'
      'COMMITRETAIN=False'
      'WAITONLOCKS=True'
      'ERRORRESOURCEFILE='
      'LOCALECODE=0000'
      'INTERBASE TRANSISOLATION=ReadCommited'
      'TRIM CHAR=False')
    VendorLib = 'gds32.dll'
    Left = 45
    Top = 37
  end
end
