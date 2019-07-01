unit Unit1;
 
interface
 
uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls;
 
type
  TForm1 = class(TForm)
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
 
{$R *.DFM}



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
begin
Gwiazda(Form1.Canvas,150,250,5,120,50);
end;

end.
