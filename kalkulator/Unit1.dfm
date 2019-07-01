object Form1: TForm1
  Left = 206
  Top = 231
  BorderStyle = bsNone
  Caption = 'kalkulatorek'
  ClientHeight = 442
  ClientWidth = 912
  Color = clPurple
  TransparentColor = True
  TransparentColorValue = clPurple
  Font.Charset = EASTEUROPE_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Courier New'
  Font.Style = [fsBold]
  KeyPreview = True
  OldCreateOrder = False
  WindowState = wsMinimized
  OnCreate = FormCreate
  OnKeyPress = FormKeyPress
  PixelsPerInch = 96
  TextHeight = 14
  object Shape1: TShape
    Left = 48
    Top = 8
    Width = 273
    Height = 385
    Pen.Width = 7
    Shape = stRoundRect
    OnMouseDown = Shape1MouseDown
  end
  object Image1: TImage
    Left = 536
    Top = 96
    Width = 305
    Height = 265
    Picture.Data = {
      07544269746D6170EE050000424DEE0500000000000076000000280000003200
      0000320000000100040000000000780500000000000000000000100000000000
      0000000000000000800000800000008080008000000080008000808000008080
      8000C0C0C0000000FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFF
      FF00FFFAAAAAAAAAAAAFFFFDDDDDDDDDDDDDDDDFAAAAAAAAAAAAAA000000FFFA
      AAAAAAAAAAAAAADDDDDDDDDDDDDDDDDDDAAAAAAAAAAAAA000000FFFAAAAAAAAA
      AAAAADDDDDDDDAAFFFFDDDDDDDDDAAAAAAAAAA000000FFFAAAAFFFAAAAAAADDD
      DDDAAAAFFFFFFDDDDDDDDAAAAAAAAA000000FFFAAAAFFFAAAAAAADDDDAAAAAFF
      FFFFFADDDDDDDAAAAAAAFF000000FFFAAAAFFFFAAAAFFDDDDFFFFFFFFFFFFAAA
      DDDDDAAAAAAAAF000000FFFAAAAAFFFAAAAAFDDDDFFFFFFFFFFFAAAAADDDDDAA
      AAAAAF000000FFFFAAAAFFFFAAAAFDDDDFFFFFFFFFFAAAAAAADDDDDAAAAAAA00
      0000FFFFAAAAAFFFAAAAADDDDFFFFFFFFAAAAAAAAAFDDDDAAAAAAA000000FFFF
      FAAAAFFFFAAAADDDDFFFFFFAAAAAAAAAAAFDDDDDAAAAAA000000FFFFFAAAAAFF
      FAAAADDDDFFFFAAAAAAAAAAAAAAFDDDDAAAAAA000000FFFFFFAAAAFFFFAAADDD
      DFFAAAAAAAAAAFAAAAAADDDDAAAAAA000000FFFFFFAAAAAFFFAAADDDDAAAAAAA
      AAAAAFFFAAAADDDDAAAAAA000000FFFFFFFAAAAAFFFAADDDDAAAAAAAAAAAAFFF
      FAAADDDDAAAAAA000000FFFFFFFFAAAAFFFFADDDDAAAAAFFFAAAAFFFFFAADDDD
      AAAAAA000000FFFFFFFFAAAAFFFAADDDDDAAFFFFFAAAAFFFFFFADDDDAAAAAA00
      0000FFFFFFFFAAAAFAAAAADDDDFFFFFFFAAAAFFFFFFFDDDDAAAAAA000000FFFF
      FFFFAAAAAAAAAADDDDAFFFFFFAAAAAFFFFFFDDDDFAAAAF000000FFFFFFFFFAAA
      AAAAAADDDDAAAFFFFFAAAAFFFFFFDDDDFAAAAF000000FFFFFFFFFAAAAAAAFFDD
      DDDAAAFFFFAAAAAFFFFFDDDDDAAAAF000000AAAAFFFFFAAAAAAFFFFDDDDAAAAF
      FFFAAAAAFFFFFDDDDAAAAF000000AAAAAAFFAAAAAAAFFFFDDDDAAAAAFFFFAAAA
      AFFFFDDDDAAAAF000000AAAAAAAAAAAAAAAAFFFDDDDFAAAAAAFFFAAAAAFFFDDD
      DAAAAF000000AAAAAAAAAAAAAAAAAFFDDDDFFAAAAAAAAAAAAAAFFDDDDDAAAF00
      0000FFFAAAAAAAAAAAAAAAFDDDDFFFAAAAAAAAAAAAAAAADDDDAAAF000000FFFF
      FAAAAAAAAAAAAAFDDDDDFFFAAAAAAAAAAAAAAADDDDAAFF000000FFFFFFAAAAAA
      AAAAAAADDDDDFFFFFAAAAAAAAAAAAADDDDAFFF000000FFFFFAAAAAAAAAAAAAAF
      DDDDFFFFAAAAAAAAAAAAAADDDDFFFF000000FFFFFAAAAFFFAAAAAAAADDDDFFFA
      AAAAAAAAAAAAAADDDDFFFF000000FFFFFAAAAFFFFFAAAAAADDDDFAAAAAAAAAAA
      AAAAAADDDDFFFF000000FFFFFAAAAFFFFFFAAAAADDDDDAAAAAAAFFFAAAAAAADD
      DDDFFF000000FFFFFAAAAFFFFFFFAAAAADDDDAAAAFFFFFFFAAAAFAADDDDAFF00
      0000FFFFFAAAAFFFFFFFFAAAADDDDAAAFFFFFFFFAAAAFFADDDDAAA000000FFFF
      FAAAAFFFFFFFFFAAADDDDDFFFFFFFFFFAAAAFFFDDDDAAA000000FFFFFAAAAFFF
      FFFFFFAAAADDDDDFFFFFFFFFAAAAFFFDDDDDDD000000FFFFFAAAAAFFFFFFFFFA
      AADDDDDDFFFFFFFFAAAAFFFDDDDDDD000000FFFFFFAAAAFFFFFFFFFAAADDDDDD
      FFFFFFFFAAAAFFFFDDDDDD000000FFFFFFAAAAAAFFFFFFFFAAADDDDDDFFFFFFA
      AAAAFFFFFFDDDD000000FFFFFFFAAAAAAAFFFFAAAAAAADDDDFFFFFFAAAAFFFFF
      FFFFFF000000FFFFFFFFAAAAAAAFFAAAAAAAADDDDFFFFFAAAAAFFFFFFFFFFF00
      0000AAFFFFFFFAAAAAAAFAAAAFAAADDDDDFFFAAAAAFFFFFFFFFFFF000000AAAA
      AAAAAAAAAAAAAAAAAAAAAADDDDDFFAAAAFFFFFFFFFFFFF000000AAAAAAAAAAAA
      AAAAAAAAAAAAAAFDDDDFAAAAAFFFFFFFFFFFFF000000AAAAAAAAAAAAAAAAAAAA
      AAAAAAFDDDDDAAAAFFFFFFFFFFFFFF000000FAAAAAAAAAAAAFFAAAAAAAAAAFFF
      DDDDDAAFFFFFFFFFFFFFFF000000FFFFFFFFFFFFFFFFFFFAAAAAAFFFADDDDDFF
      FFFFFFFFFFFFFF000000FFFFFFFFFFFFFFFFFFFFAAAAAAAAAADDDDFFFFFFFFFF
      FFFFFF000000FFFFFFFFFFFFFFFFFFFFFAAAAAAAAADDDDDFFFFFFFFFFFFFFF00
      0000FFFFFFFFFFFFFFFFFFFFFFAAAAAAAAFDDDDDFFFFFFFFFFFFFF000000FFFF
      FFFFFFFFFFFFFFFFFFFFAAAAAFFDDDDDFFFFFFFFFFFFFF000000}
    Stretch = True
    Visible = False
  end
  object Shape2: TShape
    Left = 256
    Top = 32
    Width = 49
    Height = 25
    Brush.Color = clRed
    Shape = stEllipse
    OnMouseDown = Shape2MouseDown
  end
  object Shape3: TShape
    Left = 136
    Top = 384
    Width = 97
    Height = 17
    OnMouseDown = Shape3MouseDown
  end
  object Edit1: TEdit
    Left = 72
    Top = 72
    Width = 233
    Height = 22
    Enabled = False
    MaxLength = 12
    TabOrder = 0
    Text = 'Siema'
  end
  object Button1: TButton
    Left = 80
    Top = 128
    Width = 25
    Height = 25
    Caption = '7'
    TabOrder = 1
    OnClick = Button1Click
  end
  object Button2: TButton
    Left = 128
    Top = 128
    Width = 25
    Height = 25
    Caption = '8'
    TabOrder = 2
    OnClick = Button1Click
  end
  object Button3: TButton
    Left = 176
    Top = 128
    Width = 25
    Height = 25
    Caption = '9'
    TabOrder = 3
    OnClick = Button1Click
  end
  object Button4: TButton
    Left = 224
    Top = 128
    Width = 25
    Height = 25
    Caption = '+'
    TabOrder = 4
    OnClick = Button4Click
  end
  object Button5: TButton
    Left = 80
    Top = 264
    Width = 25
    Height = 25
    Caption = ','
    TabOrder = 5
    OnClick = Button5Click
  end
  object Button6: TButton
    Left = 128
    Top = 264
    Width = 25
    Height = 25
    Caption = '0'
    TabOrder = 6
    OnClick = Button1Click
  end
  object Button7: TButton
    Left = 176
    Top = 264
    Width = 25
    Height = 25
    Caption = 'c'
    TabOrder = 7
    OnClick = Button7Click
  end
  object Button8: TButton
    Left = 224
    Top = 264
    Width = 25
    Height = 25
    Caption = '/'
    TabOrder = 8
    OnClick = Button4Click
  end
  object Button9: TButton
    Left = 80
    Top = 176
    Width = 25
    Height = 25
    Caption = '4'
    TabOrder = 9
    OnClick = Button1Click
  end
  object Button10: TButton
    Left = 128
    Top = 176
    Width = 25
    Height = 25
    Caption = '5'
    TabOrder = 10
    OnClick = Button1Click
  end
  object Button11: TButton
    Left = 176
    Top = 176
    Width = 25
    Height = 25
    Caption = '6'
    TabOrder = 11
    OnClick = Button1Click
  end
  object Button12: TButton
    Left = 224
    Top = 176
    Width = 25
    Height = 25
    Caption = '-'
    TabOrder = 12
    OnClick = Button4Click
  end
  object Button13: TButton
    Left = 80
    Top = 224
    Width = 25
    Height = 25
    Caption = '1'
    TabOrder = 13
    OnClick = Button1Click
  end
  object Button14: TButton
    Left = 128
    Top = 224
    Width = 25
    Height = 25
    Caption = '2'
    TabOrder = 14
    OnClick = Button1Click
  end
  object Button15: TButton
    Left = 176
    Top = 224
    Width = 25
    Height = 25
    Caption = '3'
    TabOrder = 15
    OnClick = Button1Click
  end
  object Button16: TButton
    Left = 224
    Top = 224
    Width = 25
    Height = 25
    Caption = '*'
    TabOrder = 16
    OnClick = Button4Click
  end
  object Button17: TButton
    Left = 128
    Top = 304
    Width = 89
    Height = 25
    Caption = '='
    TabOrder = 17
    OnClick = Button17Click
  end
end
