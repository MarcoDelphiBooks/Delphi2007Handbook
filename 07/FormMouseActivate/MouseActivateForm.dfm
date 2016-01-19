object Form11: TForm11
  Left = 0
  Top = 0
  Width = 475
  Height = 328
  Caption = 'Form11'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  OnMouseActivate = FormMouseActivate
  OnMouseDown = FormMouseDown
  PixelsPerInch = 96
  TextHeight = 13
  object Button1: TButton
    Left = 24
    Top = 16
    Width = 75
    Height = 25
    Caption = 'Button1'
    TabOrder = 0
    OnClick = Button1Click
  end
  object OpenTextFileDialog1: TOpenTextFileDialog
    Left = 128
    Top = 160
  end
end
