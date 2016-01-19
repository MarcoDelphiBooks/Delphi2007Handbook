object Form6: TForm6
  Left = 0
  Top = 0
  Caption = 'Pooling Demo'
  ClientHeight = 195
  ClientWidth = 625
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
  object btnPooling: TButton
    Left = 24
    Top = 40
    Width = 75
    Height = 25
    Caption = 'Pooling'
    TabOrder = 0
    OnClick = btnPoolingClick
  end
  object ProgressBar1: TProgressBar
    Left = 24
    Top = 87
    Width = 209
    Height = 17
    Max = 10
    TabOrder = 1
  end
  object Button2: TButton
    Left = 88
    Top = 128
    Width = 75
    Height = 25
    Caption = 'GetTime'
    TabOrder = 2
    OnClick = Button2Click
  end
  object btnPlain: TButton
    Left = 158
    Top = 40
    Width = 75
    Height = 25
    Caption = 'Plain'
    TabOrder = 3
    OnClick = btnPlainClick
  end
  object Memo1: TMemo
    Left = 312
    Top = 40
    Width = 273
    Height = 113
    TabOrder = 4
  end
end
