object Form5: TForm5
  AlignWithMargins = True
  Left = 0
  Top = 0
  Caption = 'Padding and Margins'
  ClientHeight = 203
  ClientWidth = 408
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    AlignWithMargins = True
    Left = 3
    Top = 3
    Width = 402
    Height = 41
    Align = alTop
    Caption = 'Panel1'
    TabOrder = 0
    ExplicitWidth = 271
    DesignSize = (
      402
      41)
    object Button1: TButton
      Left = 8
      Top = 9
      Width = 145
      Height = 25
      Caption = 'Increase Form Padding '
      TabOrder = 0
      OnClick = Button1Click
    end
    object Button2: TButton
      Left = 245
      Top = 9
      Width = 147
      Height = 25
      Anchors = [akTop, akRight]
      Caption = 'Increase Panel1 Margins'
      TabOrder = 1
      OnClick = Button2Click
      ExplicitLeft = 216
    end
  end
  object Panel2: TPanel
    AlignWithMargins = True
    Left = 3
    Top = 50
    Width = 402
    Height = 41
    Align = alTop
    Caption = 'Panel2'
    TabOrder = 1
    ExplicitWidth = 271
    DesignSize = (
      402
      41)
    object Button3: TButton
      Left = 245
      Top = 9
      Width = 147
      Height = 25
      Anchors = [akTop, akRight]
      Caption = 'Increase Panel2 Margins'
      TabOrder = 0
      OnClick = Button3Click
      ExplicitLeft = 216
    end
  end
end
