unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls;

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

{$R *.dfm}

procedure TForm1.Button1Click(Sender: TObject);
begin
image1.Canvas.Brush.Color:=clWhite;
image1.Canvas.Rectangle(0,0,image1.Width,image1.Height div 2);
image1.Canvas.Brush.Color:=clRed;
image1.canvas.Rectangle(0,image1.Height div 2 -1,image1.Width,image1.Height);

end;

end.
