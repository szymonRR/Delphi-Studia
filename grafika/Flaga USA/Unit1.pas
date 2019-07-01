unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, StdCtrls;

type
  TForm1 = class(TForm)
    Image1: TImage;
    Button1: TButton;
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation
  const C:Integer=212;
        D:Integer=304;
        E:Integer=20;
        G:Integer=24;
        K:Integer=24;
        L:Integer=28;
{$R *.dfm}

procedure Gwiazda(const Canvas: TCanvas; const X, Y:integer; const N:byte; const Rmax, Rmin:word);
var
   i:integer;
   ang:double;
begin

   if (N<2) or (Rmin>Rmax) then
      exit;

   Canvas.MoveTo(X, Y-Rmax);
   ang:=PI/N;
   i:=0;
   while (i<=N*2) do
   begin
      Canvas.LineTo(Round(sin(i*ang)*Rmax)+X, -Round(cos(i*ang)*Rmax)+Y );
      inc(i);
      Canvas.LineTo(Round(sin(i*ang)*Rmin)+X, -Round(cos(i*ang)*Rmin)+Y );
      inc(i);
   end;
end;





procedure TForm1.Button1Click(Sender: TObject);
var i,j,x,y,z,v:Integer;
begin
  x:=0; y:=0; z:=760; v:=L;
  for i:=1 to 13 do
  Begin
    if (i mod 2 <> 0) then
    Begin
      Image1.Canvas.Brush.Color:=clRed;
      Image1.Canvas.Rectangle(x,y,z,v);
      y:=y+L; v:=v+L;
    End
      else
        Begin
          y:=y+L;
          v:=v+L;
        End;
  End;

  Image1.Canvas.Brush.Color:=clBlue;
  Image1.Canvas.Rectangle(0,0,D-10,C-16);


  //Gwiazda2(150,150,12,5);
  x:=G;
  y:=0;
  for j:=1 to 9 do
  Begin
    if (j mod 2 <> 0) then
    Begin
      y:=y+E;
      x:=G;
      for i:=1 to 6 do
      Begin
        Image1.Canvas.Brush.Color:=clWhite;
        Gwiazda(Image1.Canvas,x,y,5,12,5);
        Image1.Canvas.FloodFill(x,y,clBlack,fsborder);
        x:=x+G+G;
      End;
    End
      else
        Begin
          y:=y+E;
          x:=G+G;
          for i:=1 to 5 do
          Begin
            Image1.Canvas.Brush.Color:=clWhite;
            Gwiazda(Image1.Canvas,x,y,5,12,5);
            Image1.Canvas.FloodFill(x,y,clBlack,fsborder);
            x:=x+G+G;
          End;
        End;
      End;


  
end;

end.
