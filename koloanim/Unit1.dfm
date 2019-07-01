object Form1: TForm1
  Left = 193
  Top = 131
  Width = 583
  Height = 366
  Caption = 'Form1'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  OnActivate = FormActivate
  PixelsPerInch = 96
  TextHeight = 13
  object kolo: TShape
    Left = 136
    Top = 152
    Width = 50
    Height = 65
    Shape = stCircle
  end
  object Timer1: TTimer
    Interval = 100
    OnTimer = Timer1Timer
    Left = 440
    Top = 200
  end
end
