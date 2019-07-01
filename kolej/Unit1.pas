unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls;

type
  TForm1 = class(TForm)
    Shape1: TShape;
    Shape2: TShape;
    Shape3: TShape;
    Timer1: TTimer;
    Timer2: TTimer;
    Button1: TButton;
    procedure Button1Click(Sender: TObject);
    procedure Timer1Timer(Sender: TObject);
    procedure Timer2Timer(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

procedure TForm1.Button1Click(Sender: TObject);
var i,n:integer ;
begin
n:=20;
for i:=1 to n do
begin timer1.Enabled:=true; sleep(1000); 

      end;
end;

procedure TForm1.Timer1Timer(Sender: TObject);
begin
shape3.Visible:=false;
shape2.Visible:=true;
    timer2.Enabled:=true;
end;

procedure TForm1.Timer2Timer(Sender: TObject);
begin
shape2.Visible:=false;
shape3.Visible:=true;



end;

end.
