object Form1: TForm1
  Left = 202
  Top = 190
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
  object Shape4: TShape
    Left = 112
    Top = 40
    Width = 345
    Height = 289
    Brush.Color = clBlack
  end
  object Shape1: TShape
    Left = 168
    Top = 80
    Width = 105
    Height = 160
    Brush.Color = clLime
    Pen.Mode = pmMerge
    Shape = stCircle
  end
  object Shape2: TShape
    Left = 216
    Top = 120
    Width = 105
    Height = 160
    Brush.Color = clBlue
    Pen.Mode = pmMerge
    Shape = stCircle
  end
  object Shape3: TShape
    Left = 256
    Top = 56
    Width = 105
    Height = 160
    Brush.Color = clRed
    Pen.Mode = pmMerge
    Shape = stCircle
  end
  object Label1: TLabel
    Left = 520
    Top = 80
    Width = 58
    Height = 13
    Caption = 'CZERWIEN'
  end
  object TrackBar1: TTrackBar
    Left = 584
    Top = 72
    Width = 150
    Height = 45
    Max = 255
    Frequency = 10
    Position = 255
    TabOrder = 0
    OnChange = TrackBar1Change
  end
  object TrackBar2: TTrackBar
    Left = 592
    Top = 136
    Width = 150
    Height = 45
    Max = 255
    Frequency = 10
    Position = 255
    TabOrder = 1
    OnChange = TrackBar2Change
  end
  object TrackBar3: TTrackBar
    Left = 592
    Top = 216
    Width = 150
    Height = 45
    Max = 255
    Frequency = 10
    Position = 255
    TabOrder = 2
    OnChange = TrackBar2Change
  end
end
