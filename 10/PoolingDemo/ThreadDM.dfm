object DataModule1: TDataModule1
  OldCreateOrder = False
  Height = 200
  Width = 274
  object SQLDataSet1: TSQLDataSet
    CommandText = 'select * from EMPLOYEE'
    DbxCommandType = 'Dbx.SQL'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = SQLConnectionPlain
    Left = 48
    Top = 40
  end
  object SQLConnectionPooling: TSQLConnection
    ConnectionName = 'test'
    DriverName = 'INTERBASE'
    GetDriverFunc = 'getSQLDriverINTERBASE'
    KeepConnection = False
    LibraryName = 'dbxint30.dll'
    LoginPrompt = False
    Params.Strings = (
      'DelegateConnection=dbxpoolconnection'
      'DriverName=INTERBASE'
      'DRIVERUNIT=DBXDynalink'
      'DRIVERPACKAGELOADER=TDBXDynalinkDriverLoader'
      'DRIVERPACKAGE=DBXCommonDriver110.bpl'
      'DRIVERASSEMBLYLOADER=Borland.Data.TDBXDynalinkDriverLoader'
      
        'DRIVERASSEMBLY=Borland.Data.DbxCommonDriver,Version=11.0.5000.0,' +
        'Culture=neutral,PublicKeyToken=a91a7c5705831a4f'
      'GETDRIVERFUNC=getSQLDriverINTERBASE'
      
        'DATABASE=C:\Program Files\Common Files\CodeGear Shared\Data\empl' +
        'oyee.gdb'
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
    Left = 152
    Top = 40
  end
  object SQLConnectionPlain: TSQLConnection
    ConnectionName = 'IBCONNECTION'
    DriverName = 'Interbase'
    GetDriverFunc = 'getSQLDriverINTERBASE'
    KeepConnection = False
    LibraryName = 'dbxint30.dll'
    LoginPrompt = False
    Params.Strings = (
      'DriverName=Interbase'
      
        'Database=C:\Program Files\Common Files\CodeGear Shared\Data\empl' +
        'oyee.gdb'
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
    Left = 152
    Top = 112
  end
end
