object Form1: TForm1
  Left = 208
  Top = 192
  Width = 928
  Height = 480
  Caption = 'Form1'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -19
  Font.Name = 'MS Sans Serif'
  Font.Style = [fsBold]
  OldCreateOrder = False
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 24
  object im: TImage
    Left = 192
    Top = 24
    Width = 689
    Height = 409
    OnMouseDown = imMouseDown
  end
  object Label1: TLabel
    Left = 32
    Top = 24
    Width = 124
    Height = 24
    Caption = 'Wspolrzedne'
  end
  object StringGrid1: TStringGrid
    Left = 32
    Top = 56
    Width = 137
    Height = 129
    ColCount = 2
    FixedCols = 0
    RowCount = 4
    FixedRows = 0
    TabOrder = 0
  end
  object Button1: TButton
    Left = 32
    Top = 200
    Width = 137
    Height = 25
    Caption = 'Wyczysc'
    TabOrder = 1
    OnClick = Button1Click
  end
  object Button2: TButton
    Left = 32
    Top = 240
    Width = 137
    Height = 25
    Caption = 'Exit'
    TabOrder = 2
    OnClick = Button2Click
  end
end
