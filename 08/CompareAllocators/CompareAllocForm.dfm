object Form6: TForm6
  Left = 751
  Top = 608
  Caption = 'Compare Allocators'
  ClientHeight = 340
  ClientWidth = 762
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
  object btnAlloc: TButton
    Left = 80
    Top = 72
    Width = 121
    Height = 25
    Caption = 'Alloc'
    TabOrder = 0
    OnClick = btnAllocClick
  end
  object btnDOM: TButton
    Left = 80
    Top = 112
    Width = 121
    Height = 25
    Caption = 'DOM'
    TabOrder = 1
    OnClick = btnDOMClick
  end
  object ProgressBar1: TProgressBar
    Left = 80
    Top = 232
    Width = 281
    Height = 17
    TabOrder = 2
  end
  object Memo1: TMemo
    Left = 400
    Top = 72
    Width = 241
    Height = 177
    TabOrder = 3
  end
  object btnStringList: TButton
    Left = 80
    Top = 152
    Width = 121
    Height = 25
    Caption = 'StringList'
    TabOrder = 4
    OnClick = btnStringListClick
  end
  object btnClientDataSet: TButton
    Left = 80
    Top = 192
    Width = 121
    Height = 25
    Caption = 'ClientDataSet'
    TabOrder = 5
    OnClick = btnClientDataSetClick
  end
  object XMLDocument1: TXMLDocument
    FileName = 
      'C:\Users\Marco\Documents\books2007\d2007h_code\08\CompareAllocat' +
      'ors\data2.xml'
    Left = 272
    Top = 120
    DOMVendorDesc = 'Open XML'
  end
  object ClientDataSet1: TClientDataSet
    Aggregates = <>
    FieldDefs = <
      item
        Name = 'EMP_NO'
        DataType = ftFloat
      end
      item
        Name = 'FIRST_NAME'
        DataType = ftString
        Size = 50
      end
      item
        Name = 'LAST_NAME'
        DataType = ftString
        Size = 50
      end
      item
        Name = 'PHONE_EXT'
        DataType = ftString
        Size = 8
      end
      item
        Name = 'HIRE_DATE'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'DEPT_NO'
        DataType = ftInteger
      end
      item
        Name = 'JOB_CODE'
        DataType = ftString
        Size = 10
      end
      item
        Name = 'JOB_GRADE'
        DataType = ftSmallint
      end
      item
        Name = 'JOB_COUNTRY'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'SALARY'
        DataType = ftFloat
      end
      item
        Name = 'FULL_NAME'
        DataType = ftString
        Size = 80
      end>
    IndexDefs = <>
    Params = <>
    StoreDefs = True
    Left = 272
    Top = 168
  end
end
