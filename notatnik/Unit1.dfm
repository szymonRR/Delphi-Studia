object Form1: TForm1
  Left = 408
  Top = 131
  Width = 893
  Height = 480
  Caption = 'notatniczek'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  Menu = MainMenu1
  OldCreateOrder = False
  OnCloseQuery = FormCloseQuery
  PixelsPerInch = 96
  TextHeight = 13
  object Memo1: TMemo
    Left = 0
    Top = 0
    Width = 877
    Height = 422
    Align = alClient
    Lines.Strings = (
      '')
    ScrollBars = ssBoth
    TabOrder = 0
  end
  object MainMenu1: TMainMenu
    Left = 736
    Top = 336
    object Plik1: TMenuItem
      Caption = 'Plik'
      object nowy1: TMenuItem
        Caption = 'Nowy'
        OnClick = nowy1Click
      end
      object czytaj1: TMenuItem
        Caption = 'Czytaj'
        OnClick = czytaj1Click
      end
      object zapisz1: TMenuItem
        Caption = 'Zapisz'
        OnClick = zapisz1Click
      end
      object N1: TMenuItem
        Caption = '-'
      end
      object Koniec1: TMenuItem
        Caption = 'Koniec'
        OnClick = Koniec1Click
      end
    end
    object ustawienia1: TMenuItem
      Caption = 'Ustawienia'
      object Czcionka1: TMenuItem
        Caption = 'Czcionka'
        OnClick = Czcionka1Click
      end
      object Kolor1: TMenuItem
        Caption = 'Kolor t'#322'a'
        OnClick = Kolor1Click
      end
      object Zawijajtekst1: TMenuItem
        Caption = 'Zawijaj tekst'
        Checked = True
        OnClick = Zawijajtekst1Click
      end
    end
  end
  object OpenDialog1: TOpenDialog
    Filter = 
      'Teksty|*.txt;*.me;*.ini|'#378'r'#243'd'#322'owe z delphi|*.pas;*.dfm;*.dpr|pozo' +
      'sta'#322'e|*.*'
    Left = 736
    Top = 240
  end
  object SaveDialog1: TSaveDialog
    DefaultExt = 'txt'
    Filter = 'tekst|*.txt'
    Left = 736
    Top = 280
  end
  object FontDialog1: TFontDialog
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    Left = 736
    Top = 200
  end
  object ColorDialog1: TColorDialog
    Left = 736
    Top = 160
  end
end
