unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls, Grids;

type
  TForm1 = class(TForm)
    StringGrid1: TStringGrid;
    im: TImage;
    Button1: TButton;
    Label1: TLabel;
    Button2: TButton;
    procedure FormCreate(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure imMouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
  private
    { Private declarations }
  public
  ile:integer;
  p:array[0..3] of TPoint;
  procedure rysuj;
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

procedure TForm1.FormCreate(Sender: TObject);
begin
  im.Canvas.Brush.Color:=ClWhite;
  im.Canvas.FillRect(im.BoundsRect);
  ile:=-1;
end;

procedure TForm1.Button2Click(Sender: TObject);
begin
  close
end;

procedure TForm1.Button1Click(Sender: TObject);
begin
  im.Canvas.Brush.Color:=ClWhite;
  im.Canvas.FillRect(im.ClientRect);
  ile:=-1;stringgrid1.Cols[0].Clear;stringgrid1.Cols[1].Clear;stringgrid1.Cols[2].Clear;stringgrid1.Cols[3].Clear
end;

procedure TForm1.imMouseDown(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
  if ile=3 then exit;
  inc(ile);
  p[ile].X:=x; p[ile].Y:=y;
  stringGrid1.Cells[0,ile]:=IntToStr(x);
  stringGrid1.Cells[1,ile]:=IntToStr(y);
  im.Canvas.Ellipse(x-3,y-3,x+3,y+3);
  If ile=3 then rysuj
end;

procedure TForm1.rysuj;
var i:integer;
    t:real;
begin
  im.Canvas.MoveTo(p[0].x,p[0].y);
  for i:=1 to 100 do
    begin
      t:=i/100;
      im.Canvas.LineTo(Round(p[0].x*(1-t)*sqr(1-t)+p[1].x*3*sqr(1-t)*t+3*p[2].x*(1-t)*sqr(t)+p[3].x*t*t*t),
                       Round(p[0].y*(1-t)*sqr(1-t)+p[1].y*3*sqr(1-t)*t+3*p[2].y*(1-t)*sqr(t)+p[3].y*t*t*t));
    end
end;

end.
