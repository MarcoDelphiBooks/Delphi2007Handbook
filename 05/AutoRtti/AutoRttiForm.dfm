object FormAutoRtti: TFormAutoRtti
  Left = 0
  Top = 0
  Caption = 'FormAutoRtti'
  ClientHeight = 281
  ClientWidth = 494
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  OnCreate = FormCreate
  OnDestroy = FormDestroy
  PixelsPerInch = 96
  TextHeight = 13
  object btnReadProp: TButton
    Left = 24
    Top = 32
    Width = 106
    Height = 25
    Caption = 'Read Property'
    TabOrder = 0
    OnClick = btnReadPropClick
  end
  object Memo1: TMemo
    Left = 152
    Top = 32
    Width = 289
    Height = 225
    TabOrder = 1
  end
end
