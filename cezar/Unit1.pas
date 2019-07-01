unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Spin, StdCtrls, ComCtrls, ExtCtrls;

type
  TU=array[1..32] of real;
  TForm1 = class(TForm)
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    TabSheet2: TTabSheet;
    Memo1: TMemo;
    Memo2: TMemo;
    Label1: TLabel;
    Label2: TLabel;
    Button1: TButton;
    Button2: TButton;
    Label3: TLabel;
    SpinEdit1: TSpinEdit;
    Image1: TImage;
    Image2: TImage;
    Label4: TLabel;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure TabSheet2Enter(Sender: TObject);
  private
    { Private declarations }
  public
   s:TU;
  procedure kody(mwe,mwy:TMemo;kier:integer);
  procedure wyznacz;
  procedure wyrysuj(c:TCanvas;var t:TU);
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}
const ML:string='a¹bcædeêfghijkl³mnñoóprsœtuwyzŸ¿a¹bcædeêfghijkl³mnñoóprsœtuwyzŸ¿';
      dl:string='A¥BCÆDEÊFGHIJKL£MNÑOÓPRSŒTUWYZ¯A¥BCÆDEÊFGHIJKL£MNÑOÓPRSŒTUWYZ¯';



procedure TForm1.kody(mwe,mwy: TMemo; kier: integer);
var we,wy:string;
    poz,wiersz,nrznaku,p:integer;
begin
mwy.Clear; p:=spinedit1.value;
for wiersz:=0 to mwe.Lines.Count-1 do
begin
  we:=mwe.Lines[wiersz];
  for nrznaku:=1 to length(we) do
    begin
      poz:=pos(we[nrznaku],ml) + pos(we[nrznaku],dl) ;
      if poz=0 then wy:=wy+we[nrznaku]
                else if kier=1
                        then wy:=wy+dl[poz+ p]
                        else wy:=wy+ml[poz+32-p]
    end;
    mwy.Lines.Add(wy)
end;
end;


procedure TForm1.Button1Click(Sender: TObject);
begin
kody(memo1,memo2,1)
end;

procedure TForm1.Button2Click(Sender: TObject);
begin
kody(memo2,memo1,-1);
end;
procedure TForm1.wyznacz;
var we:string;
poz,i,j,n:integer;
begin
for i:=1 to 32 do s[i]:=0;
n:=0;
for i:=0 to memo2.Lines.Count-1 do
begin
we:=memo2.Lines[i];
  for j:=1 to length(we) do
  begin
  poz:=pos(we[j],ml)+pos(we[j],dl);
  if poz>0
  then  begin inc(n); s[poz]:=s[poz]+1; end;
  end; end;
  for i:=1 to 32 do
  s[i]:=s[i]/n;
  end;


procedure TForm1.wyrysuj(c: TCanvas; var t:TU);
 var sk,max:real;
      sz,wys,px,i:integer;
 begin
 c.Brush.Color:=clwhite;
 c.FillRect(c.ClipRect);
 sz:=(c.ClipRect.Right-c.ClipRect.Left) div 32 -2;
 wys:=(c.ClipRect.Bottom-c.ClipRect.Top)- c.Font.Size-4;
 px:=2;
 max:=t[1];
 for i:=2 to 32 do if max<t[i] then max:=t[i];
 sk:=wys/max;
 for i:=1 to 32 do
  begin
  c.Brush.Color:=clGreen;
  c.FillRect(Rect(px,wys,px+sz,(wys-t[i]*sk)));
  c.Brush.Color:=clYellow;
  c.TextOut(px+(sz-c.TextWidth(dl[i])),wys,dl[i]);
  px:=px+sz+2;
  end;
 end;
procedure TForm1.TabSheet2Enter(Sender: TObject);
begin
wyznacz;
wyrysuj(image2.Canvas,s);
end;

end.
