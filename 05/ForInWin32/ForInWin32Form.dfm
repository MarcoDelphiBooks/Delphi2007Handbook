object Form3: TForm3
  Left = 0
  Top = 0
  Caption = 'ForInDotNet'
  ClientHeight = 317
  ClientWidth = 504
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = True
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object Button1: TButton
    Left = 40
    Top = 32
    Width = 153
    Height = 25
    Caption = '"Manual" Enumerator'
    TabOrder = 0
    OnClick = Button1Click
  end
  object Button2: TButton
    Left = 40
    Top = 64
    Width = 153
    Height = 25
    Caption = 'For..in Enumerator'
    TabOrder = 1
    OnClick = Button2Click
  end
  object ListBox1: TListBox
    Left = 224
    Top = 32
    Width = 217
    Height = 257
    ItemHeight = 13
    TabOrder = 2
  end
  object Button3: TButton
    Left = 40
    Top = 96
    Width = 153
    Height = 25
    Caption = 'For..in String'
    TabOrder = 3
    OnClick = Button3Click
  end
  object Button4: TButton
    Left = 40
    Top = 128
    Width = 153
    Height = 25
    Caption = 'For..in Set'
    TabOrder = 4
    OnClick = Button4Click
  end
  object Button5: TButton
    Left = 40
    Top = 160
    Width = 153
    Height = 25
    Caption = 'For..in Components'
    TabOrder = 5
    OnClick = Button5Click
  end
  object Button6: TButton
    Left = 40
    Top = 192
    Width = 153
    Height = 25
    Caption = 'For..in StringList'
    TabOrder = 6
    OnClick = Button6Click
  end
  object Button7: TButton
    Left = 40
    Top = 224
    Width = 153
    Height = 25
    Caption = 'For..in Custom Enumerator'
    TabOrder = 7
    OnClick = Button7Click
  end
  object Button8: TButton
    Left = 40
    Top = 256
    Width = 153
    Height = 25
    Caption = 'For..in .NET Container'
    TabOrder = 8
    OnClick = Button8Click
  end
end
