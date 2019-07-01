unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, StdCtrls;

type
  TForm1 = class(TForm)
    Button1: TButton;
    Image1: TImage;
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;
  x,y,x2,y2:integer;



implementation

{$R *.dfm}

procedure TForm1.Button1Click(Sender: TObject);
var i,m,n,a,b,c,d:integer;

begin
n:=3 ;
m:=2;
x:=0;
y:=0;
x2:=100;
y2:=100;
image1.Canvas.Pen.Width:=5;
image1.Canvas.Brush.Style:= bsClear;
for i:=1 to n do
begin

if i=1 then image1.Canvas.Pen.Color:=clBlue;
if i=2 then image1.Canvas.Pen.Color:=clBlack;
if i=3 then image1.Canvas.Pen.color:=clRed;
image1.Canvas.Ellipse(x,y,x2,y2);
x:=x+126;
x2:=x+100;

end;
a:=63;
b:=50;
c:=a+100;
d:=b+100;
for i:=1 to m do
begin
if i=1 then image1.Canvas.Pen.Color:=clYellow;
if i=2 then image1.Canvas.Pen.Color:=clGreen;
image1.Canvas.Ellipse(a,b,c,d);
a:=a+126;
c:=a+100;
end;
end;

end.
