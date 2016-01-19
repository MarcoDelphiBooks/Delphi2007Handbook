object FormVistaTest: TFormVistaTest
  Left = 0
  Top = 0
  Caption = 'FormVistaTest'
  ClientHeight = 276
  ClientWidth = 364
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
  GlassFrame.Enabled = True
  GlassFrame.Top = 40
  object Label1: TLabel
    Left = 291
    Top = 13
    Width = 31
    Height = 13
    Caption = 'Label1'
  end
  object Button1: TButton
    Left = 24
    Top = 8
    Width = 75
    Height = 25
    Caption = 'task msg'
    TabOrder = 0
    OnClick = Button1Click
  end
  object Button2: TButton
    Left = 105
    Top = 8
    Width = 75
    Height = 25
    Caption = 'task dlg'
    TabOrder = 1
    OnClick = Button2Click
  end
  object Button3: TButton
    Left = 186
    Top = 8
    Width = 75
    Height = 25
    Caption = 'open'
    TabOrder = 2
    OnClick = Button3Click
  end
  object ListBox1: TListBox
    Left = 105
    Top = 64
    Width = 177
    Height = 185
    ItemHeight = 13
    TabOrder = 3
  end
  object TaskDialog1: TTaskDialog
    Buttons = <>
    Caption = 'titolo'
    ExpandButtonCaption = 'dettagli'
    ExpandedText = 'testo aggiuntivo di secondo piano'
    Flags = [tfAllowDialogCancellation, tfShowProgressBar, tfShowMarqueeProgressBar]
    FooterText = 'footer che bello!'
    ProgressBar.MarqueeSpeed = 5
    ProgressBar.Position = 10
    RadioButtons = <>
    Text = 'questo '#232' il messaggio per l'#39'utente'
    Title = 'title'
    Left = 48
    Top = 72
  end
  object OpenDialog1: TOpenDialog
    Left = 48
    Top = 128
  end
  object FileOpenDialog1: TFileOpenDialog
    FavoriteLinks = <>
    FileTypes = <>
    Options = []
    Left = 48
    Top = 176
  end
  object Timer1: TTimer
    OnTimer = Timer1Timer
    Left = 320
    Top = 72
  end
end
