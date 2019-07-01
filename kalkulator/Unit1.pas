unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, jpeg, StdCtrls;

type
  TForm1 = class(TForm)
    Shape1: TShape;
    Image1: TImage;
    Shape2: TShape;
    Edit1: TEdit;
    Button1: TButton;
    Button2: TButton;
    Button3: TButton;
    Button4: TButton;
    Button5: TButton;
    Button6: TButton;
    Button7: TButton;
    Button8: TButton;
    Button9: TButton;
    Button10: TButton;
    Button11: TButton;
    Button12: TButton;
    Button13: TButton;
    Button14: TButton;
    Button15: TButton;
    Button16: TButton;
    Button17: TButton;
    Shape3: TShape;
    procedure FormCreate(Sender: TObject);
    procedure Shape2MouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure Button1Click(Sender: TObject);
    procedure Button5Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);
    procedure Button7Click(Sender: TObject);
    
    procedure Button17Click(Sender: TObject);
    procedure Shape3MouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure Shape1MouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
  private
    { Private declarations }
  public
  ar1,ar2,op:string;
  znikaj:boolean;
  procedure obliczaj;
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

procedure TForm1.FormCreate(Sender: TObject);
begin
  shape1.Brush.Bitmap:=image1.Picture.Bitmap;
  znikaj:=true
end;

procedure TForm1.Shape2MouseDown(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
close
end;

procedure TForm1.Button1Click(Sender: TObject);
begin
if znikaj  then begin znikaj:=false;
edit1.Text:=''
end;
edit1.Text:=edit1.Text+(sender as TButton).Caption ;
button17.SetFocus;
end;

procedure TForm1.Button5Click(Sender: TObject);
begin
if pos(',',edit1.Text)=0
then edit1.text:=edit1.text+',' ;
button17.SetFocus
end;

procedure TForm1.Button4Click(Sender: TObject);
begin
if edit1.Text<>''
  then begin
        ar1:=edit1.Text;
        znikaj:=true;
        op:=(sender as tbutton).Caption
        end;
end;

procedure TForm1.Button7Click(Sender: TObject);
begin
 edit1.Text:='start';
 znikaj:=true;
 op:='';ar1:='';
end;

procedure tform1.obliczaj;
var a,b,w:real;
begin
  try
  ar2:=edit1.Text;
  a:=strtofloat(ar1);
  b:=strtofloat(ar2);
  case op[1] of
  '+':w:=a+b;
  '-':w:=a-b;
  '*':w:=a*b;
  '/':w:=a/b;
  end;
  ar1:=floattostr(w);
  edit1.Text:=ar1;
  except
  end


end;



procedure TForm1.Button17Click(Sender: TObject);
begin
obliczaj;
znikaj:=true;
end;

procedure TForm1.Shape3MouseDown(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
WindowState:=wsMinimized
end;

procedure TForm1.Shape1MouseDown(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
if button=mbleft
  then begin
        ReleaseCapture;
        SendMessage(Handle,WM_NCLButtonDown,HTCaption,0);
        end;
end;

procedure TForm1.FormKeyPress(Sender: TObject; var Key: Char);
var i:integer;
  b:Tbutton  ;
begin
Key:=Upcase(key);
b:=nil;
for i:=0 to form1.ControlCount - 1 do
  if controls[i] is Tbutton
    then if String ((controls[i] as Tbutton).Caption)[1]=key
    then b:=controls[i] as Tbutton;
    if b<>nil then b.OnClick(b)
end;

end.
