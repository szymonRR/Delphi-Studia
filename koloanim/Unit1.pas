unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls;

type
  TForm1 = class(TForm)
    kolo: TShape;
    Timer1: TTimer;
    procedure Timer1Timer(Sender: TObject);
    procedure FormActivate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;
  prawo:Boolean;

implementation

{$R *.dfm}

procedure TForm1.Timer1Timer(Sender: TObject);
var
X : integer; 
begin
if prawo = true then Kolo.left := kolo.left + 10;
if prawo = false then Kolo.left := kolo.left - 10;
if kolo.left = 0 then begin prawo := true; kolo.Shape:=stEllipse; end;
X := form1.width - kolo.width-25;
if kolo.left >= X then prawo := false;
if kolo.left <= 1 then
prawo := true;
end;

procedure TForm1.FormActivate(Sender: TObject);
begin
prawo := true;
end;

end.
