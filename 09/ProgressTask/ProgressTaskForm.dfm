object Form6: TForm6
  Left = 0
  Top = 0
  Caption = 'ProgressTask'
  ClientHeight = 221
  ClientWidth = 420
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object btnDo: TButton
    Left = 56
    Top = 32
    Width = 75
    Height = 25
    Caption = 'Do'
    TabOrder = 0
    OnClick = btnDoClick
  end
  object ProgressBar1: TProgressBar
    Left = 56
    Top = 80
    Width = 265
    Height = 17
    TabOrder = 1
  end
  object btnDoTask: TButton
    Left = 56
    Top = 128
    Width = 75
    Height = 25
    Caption = 'DoTask'
    TabOrder = 2
    OnClick = btnDoTaskClick
  end
  object btnCancel: TButton
    Left = 168
    Top = 32
    Width = 75
    Height = 25
    Caption = 'Cancel'
    TabOrder = 3
    OnClick = btnCancelClick
  end
  object TaskDialog1: TTaskDialog
    Buttons = <>
    Caption = 'Computing'
    ExpandButtonCaption = 'Expand'
    ExpandedText = 'There is more text here, although there is nothing relevant...'
    Flags = [tfAllowDialogCancellation, tfShowProgressBar, tfCallbackTimer]
    FooterIcon = 3
    FooterText = 'Please wait while we compute prime numbers.'
    RadioButtons = <>
    Text = 'This is a sample use of the TaskBar with a progressbar'
    Title = 'ProgressTask'
    OnButtonClicked = TaskDialog1ButtonClicked
    OnTimer = TaskDialog1Timer
    Left = 248
    Top = 112
  end
  object Timer1: TTimer
    Enabled = False
    Interval = 100
    OnTimer = Timer1Timer
    Left = 336
    Top = 24
  end
end
