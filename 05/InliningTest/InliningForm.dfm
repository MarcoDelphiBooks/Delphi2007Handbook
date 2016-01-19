object Form3: TForm3
  Left = 0
  Top = 0
  Caption = 'InliningTest'
  ClientHeight = 294
  ClientWidth = 467
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object bntLenght: TButton
    Left = 48
    Top = 40
    Width = 75
    Height = 25
    Caption = 'Lenght'
    TabOrder = 0
    OnClick = bntLenghtClick
  end
  object btnLengthInline: TButton
    Left = 48
    Top = 80
    Width = 75
    Height = 25
    Caption = 'LengthInline'
    TabOrder = 1
    OnClick = btnLengthInlineClick
  end
  object btnMaxInline: TButton
    Left = 48
    Top = 120
    Width = 75
    Height = 25
    Caption = 'MaxInline'
    TabOrder = 2
    OnClick = btnMaxInlineClick
  end
  object Memo1: TMemo
    Left = 152
    Top = 40
    Width = 265
    Height = 201
    TabOrder = 3
  end
  object btnMax: TButton
    Left = 48
    Top = 160
    Width = 75
    Height = 25
    Caption = 'Max'
    TabOrder = 4
    OnClick = btnMaxClick
  end
end
