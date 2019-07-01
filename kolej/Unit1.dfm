object Form1: TForm1
  Left = 192
  Top = 124
  Width = 928
  Height = 480
  Caption = 'Form1'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object Shape1: TShape
    Left = 96
    Top = 72
    Width = 97
    Height = 169
    Brush.Color = clBlack
  end
  object Shape2: TShape
    Left = 120
    Top = 168
    Width = 49
    Height = 41
    Brush.Color = clYellow
    Shape = stCircle
    Visible = False
  end
  object Shape3: TShape
    Left = 120
    Top = 96
    Width = 49
    Height = 41
    Brush.Color = clYellow
    Shape = stCircle
    Visible = False
  end
  object Button1: TButton
    Left = 264
    Top = 72
    Width = 75
    Height = 25
    Caption = 'start'
    TabOrder = 0
    OnClick = Button1Click
  end
  object Timer1: TTimer
    Enabled = False
    OnTimer = Timer1Timer
    Left = 360
    Top = 112
  end
  object Timer2: TTimer
    Enabled = False
    OnTimer = Timer2Timer
    Left = 360
    Top = 176
  end
end
