object Form8: TForm8
  Left = 0
  Top = 0
  Caption = 'ShowMemory'
  ClientHeight = 563
  ClientWidth = 640
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object Image1: TImage
    Left = 16
    Top = 8
    Width = 512
    Height = 512
  end
  object Button1: TButton
    Left = 543
    Top = 8
    Width = 75
    Height = 25
    Caption = 'Update'
    TabOrder = 0
    OnClick = Button1Click
  end
  object Button2: TButton
    Left = 543
    Top = 56
    Width = 75
    Height = 25
    Caption = 'Allocate'
    TabOrder = 1
    OnClick = Button2Click
  end
  object Button3: TButton
    Left = 543
    Top = 104
    Width = 75
    Height = 25
    Caption = 'Crazy Alloc'
    TabOrder = 2
    OnClick = Button3Click
  end
end
