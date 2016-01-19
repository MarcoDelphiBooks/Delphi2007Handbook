object Form10: TForm10
  Left = 0
  Top = 0
  Caption = 'ListBoxHelper'
  ClientHeight = 204
  ClientWidth = 331
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object ListBox1: TListBox
    Left = 16
    Top = 64
    Width = 193
    Height = 97
    ItemHeight = 13
    Items.Strings = (
      'one'
      'two'
      'three'
      'four')
    TabOrder = 0
  end
  object Button1: TButton
    Left = 16
    Top = 24
    Width = 75
    Height = 25
    Caption = 'Button1'
    TabOrder = 1
    OnClick = Button1Click
  end
end
