object FormDirect: TFormDirect
  Left = 0
  Top = 0
  Caption = 'DbxDirect'
  ClientHeight = 357
  ClientWidth = 671
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object btnConnection: TButton
    Left = 112
    Top = 32
    Width = 81
    Height = 25
    Caption = 'Connection'
    TabOrder = 0
    OnClick = btnConnectionClick
  end
  object Memo1: TMemo
    Left = 208
    Top = 34
    Width = 425
    Height = 287
    TabOrder = 1
  end
  object btnCommand: TButton
    Left = 112
    Top = 80
    Width = 75
    Height = 25
    Caption = 'Command'
    TabOrder = 2
    OnClick = btnCommandClick
  end
  object btnReader: TButton
    Left = 112
    Top = 128
    Width = 75
    Height = 25
    Caption = 'Reader'
    TabOrder = 3
    OnClick = btnReaderClick
  end
  object SQLConnection1: TSQLConnection
    ConnectionName = 'IBCONNECTION'
    DriverName = 'Interbase'
    GetDriverFunc = 'getSQLDriverINTERBASE'
    LibraryName = 'dbxint30.dll'
    Params.Strings = (
      'DriverName=Interbase'
      
        'Database=localhost:C:\Program Files\Firebird\Firebird_2_0\exampl' +
        'es\empbuild\EMPLOYEE.FDB'
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
    VendorLib = 'gds32.dll'
    Left = 40
    Top = 32
  end
end
