object Form18: TForm18
  Left = 0
  Top = 0
  Caption = 'OpenDialog'
  ClientHeight = 164
  ClientWidth = 343
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object btnOpen: TButton
    Left = 120
    Top = 64
    Width = 75
    Height = 25
    Caption = 'Open'
    TabOrder = 0
    OnClick = btnOpenClick
  end
  object FileOpenDialog1: TFileOpenDialog
    FavoriteLinks = <
      item
        Location = 'c:\Users'
      end
      item
        Location = 'c:\program files\codegear\rad studio\5.0'
      end>
    FileNameLabel = 'Select a file with an image:'
    FileTypes = <
      item
      end>
    OkButtonLabel = 'Pick this file'
    Options = []
    Left = 56
    Top = 32
  end
end
