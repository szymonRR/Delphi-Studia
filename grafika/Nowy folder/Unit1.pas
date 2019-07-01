unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs;

type
  TForm1 = class(TForm)
    procedure FormPaint(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

procedure TForm1.FormPaint(Sender: TObject);
begin
Canvas.Brush.Color := clRed;
Canvas.Brush.Style := bsSolid;
Canvas.TextOut(30, 30, 'spierdalaj');
Canvas.Ellipse(50, 50, 200, 200);
Canvas.Arc(0, 0, 100, 100, 0, 20, 90, 180); //³uk//
Canvas.Rectangle(20, 20, 100, 200); //prostok¹t//
Canvas.MoveTo(300, 200);  //linia//
Canvas.LineTo(500, 400);
end;

end.
