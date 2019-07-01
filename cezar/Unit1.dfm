object Form1: TForm1
  Left = 189
  Top = 199
  BorderStyle = bsDialog
  Caption = 'analiza szyfru'
  ClientHeight = 442
  ClientWidth = 912
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -16
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 20
  object PageControl1: TPageControl
    Left = 0
    Top = 0
    Width = 912
    Height = 442
    ActivePage = TabSheet2
    Align = alClient
    TabOrder = 0
    object TabSheet1: TTabSheet
      Caption = 'Szyfrowanie'
      object Label1: TLabel
        Left = 32
        Top = 8
        Width = 92
        Height = 20
        Caption = 'Tekst Jawny'
      end
      object Label2: TLabel
        Left = 624
        Top = 8
        Width = 147
        Height = 20
        Caption = 'Tekst zaszyfrowany'
      end
      object Label3: TLabel
        Left = 368
        Top = 56
        Width = 97
        Height = 20
        Caption = 'Przesuni'#281'cie'
      end
      object Memo1: TMemo
        Left = 16
        Top = 32
        Width = 305
        Height = 337
        TabOrder = 0
      end
      object Memo2: TMemo
        Left = 544
        Top = 32
        Width = 297
        Height = 337
        Lines.Strings = (
          '')
        TabOrder = 1
      end
      object Button1: TButton
        Left = 360
        Top = 144
        Width = 113
        Height = 25
        Caption = 'Koduj'
        TabOrder = 2
        OnClick = Button1Click
      end
      object Button2: TButton
        Left = 360
        Top = 192
        Width = 113
        Height = 25
        Caption = 'dekoduj'
        TabOrder = 3
        OnClick = Button2Click
      end
      object SpinEdit1: TSpinEdit
        Left = 392
        Top = 88
        Width = 49
        Height = 30
        MaxValue = 0
        MinValue = 0
        TabOrder = 4
        Value = 0
      end
    end
    object TabSheet2: TTabSheet
      Caption = 'Rysunki'
      ImageIndex = 1
      OnEnter = TabSheet2Enter
      object Image1: TImage
        Left = 0
        Top = 0
        Width = 904
        Height = 129
        Align = alTop
      end
      object Image2: TImage
        Left = 0
        Top = 256
        Width = 904
        Height = 151
        Align = alBottom
      end
      object Label4: TLabel
        Left = 248
        Top = 160
        Width = 50
        Height = 20
        Caption = 'Label4'
      end
    end
  end
end
