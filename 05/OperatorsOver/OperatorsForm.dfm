object Form1: TForm1
  Left = 8
  Top = 8
  Caption = 'OperatorsOver'
  ClientHeight = 230
  ClientWidth = 345
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = True
  PixelsPerInch = 96
  TextHeight = 13
  object Button1: TButton
    Left = 88
    Top = 32
    Width = 145
    Height = 25
    Caption = 'Records operations'
    TabOrder = 0
    OnClick = Button1Click
  end
  object Button3: TButton
    Left = 88
    Top = 96
    Width = 145
    Height = 25
    Caption = 'Operator method call'
    TabOrder = 1
    OnClick = Button3Click
  end
  object Button2: TButton
    Left = 88
    Top = 152
    Width = 145
    Height = 25
    Caption = 'Automatic Promotion'
    TabOrder = 2
    OnClick = Button2Click
  end
end
