unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, StdCtrls, ComCtrls;

type
  TForm1 = class(TForm)
    Shape1: TShape;
    Shape2: TShape;
    Shape3: TShape;
    Shape4: TShape;
    TrackBar1: TTrackBar;
    Label1: TLabel;
    TrackBar2: TTrackBar;
    TrackBar3: TTrackBar;
    procedure TrackBar1Change(Sender: TObject);
    procedure TrackBar2Change(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

procedure TForm1.TrackBar1Change(Sender: TObject);
begin
Shape3.Brush.Color:=(TrackBar1.Position);
end;

procedure TForm1.TrackBar2Change(Sender: TObject);
begin
Shape2.Brush.Color:=256*256*(TrackBar2.Position);
Shape1.Brush.Color:=256*(TrackBar3.Position);
end;

end.
