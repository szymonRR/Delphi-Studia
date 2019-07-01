unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Menus;

type
  TForm1 = class(TForm)
    Memo1: TMemo;
    MainMenu1: TMainMenu;
    Plik1: TMenuItem;
    ustawienia1: TMenuItem;
    nowy1: TMenuItem;
    czytaj1: TMenuItem;
    zapisz1: TMenuItem;
    N1: TMenuItem;
    Koniec1: TMenuItem;
    Czcionka1: TMenuItem;
    Kolor1: TMenuItem;
    Zawijajtekst1: TMenuItem;
    OpenDialog1: TOpenDialog;
    SaveDialog1: TSaveDialog;
    FontDialog1: TFontDialog;
    ColorDialog1: TColorDialog;
    procedure Koniec1Click(Sender: TObject);
    procedure nowy1Click(Sender: TObject);
    procedure Zawijajtekst1Click(Sender: TObject);
    procedure Czcionka1Click(Sender: TObject);
    procedure Kolor1Click(Sender: TObject);
    procedure czytaj1Click(Sender: TObject);
    procedure zapisz1Click(Sender: TObject);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

procedure TForm1.Koniec1Click(Sender: TObject);
begin

Close;
end;

procedure TForm1.nowy1Click(Sender: TObject);
begin
memo1.Clear;
end;

procedure TForm1.Zawijajtekst1Click(Sender: TObject);
begin
  memo1.WordWrap:=not memo1.WordWrap;
  zawijajtekst1.Checked:=memo1.WordWrap;
end;

procedure TForm1.Czcionka1Click(Sender: TObject);
begin
 if fontDialog1.Execute
  then memo1.Font:=FontDialog1.Font
 end;

procedure TForm1.Kolor1Click(Sender: TObject);
begin
if colordialog1.Execute
 then memo1.Color:=colordialog1.Color
end;

procedure TForm1.czytaj1Click(Sender: TObject);
begin
if memo1.Modified then
begin if opendialog1.Execute
 then memo1.Lines.LoadFromFile(opendialog1.FileName);

    end      else
if Application.MessageBox('czy napewno chcesz nadpisac?'#13'BO TEKSTU NIE ZAPISALES',
  'UWAGA',mb_okcancel)=idok
  then if opendialog1.Execute
  then memo1.Lines.LoadFromFile(opendialog1.FileName);
end;

procedure TForm1.zapisz1Click(Sender: TObject);
begin
  if savedialog1.Execute
   then begin
    memo1.Lines.SaveToFile(savedialog1.FileName);
    memo1.Modified:=false;
    end;
    end;

procedure TForm1.FormCloseQuery(Sender: TObject; var CanClose: Boolean);
begin
 canclose:=true;
 if memo1.Modified
  then canclose:=Application.MessageBox('czy napewno chcesz zakonczyc?'#13'BO TEKSTU NIE ZAPISALES',
  'UWAGA',mb_okcancel)=idok
end;

end.
