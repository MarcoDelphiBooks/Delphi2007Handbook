object ContainerForm: TContainerForm
  Left = 0
  Top = 0
  Caption = 'ContainerForm'
  ClientHeight = 230
  ClientWidth = 178
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
  object btnTest: TButton
    Left = 48
    Top = 48
    Width = 75
    Height = 25
    Caption = 'Test'
    TabOrder = 0
    OnClick = btnTestClick
  end
  object Button1: TButton
    Left = 48
    Top = 96
    Width = 75
    Height = 25
    Caption = 'Better Test'
    TabOrder = 1
    OnClick = Button1Click
  end
  object Button2: TButton
    Left = 48
    Top = 144
    Width = 75
    Height = 25
    Caption = 'Helpers'
    TabOrder = 2
    OnClick = Button2Click
  end
end
