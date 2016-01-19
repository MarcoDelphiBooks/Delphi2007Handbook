object Form8: TForm8
  Left = 0
  Top = 0
  Caption = 'GetFont'
  ClientHeight = 292
  ClientWidth = 554
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PopupMenu = PopupMenu1
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 48
    Top = 96
    Width = 31
    Height = 13
    Caption = 'Label1'
  end
  object btnGetFont: TButton
    Left = 48
    Top = 48
    Width = 75
    Height = 25
    Caption = 'Get Font'
    TabOrder = 0
    OnClick = btnGetFontClick
  end
  object PopupMenu1: TPopupMenu
    Left = 216
    Top = 56
    object one1: TMenuItem
      Caption = 'one'
    end
    object two1: TMenuItem
      Caption = 'two'
    end
    object three1: TMenuItem
      Caption = 'three'
    end
  end
end
