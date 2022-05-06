unit loadingIcon;

interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes, System.Variants,
  FMX.Types, FMX.Controls, FMX.Forms, FMX.Graphics, FMX.Dialogs, FMX.Effects,
  FMX.Objects, FMX.Ani;

type
  TForm1 = class(TForm)
    Rectangle1: TRectangle;
    Circle1: TCircle;
    FloatAnimation1: TFloatAnimation;
    Circle2: TCircle;
    Image5: TImage;
    Arc1: TArc;
    Circle_Animation: TFloatAnimation;
    procedure FormShow(Sender: TObject);
    procedure Circle_AnimationFinish(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.fmx}

uses load;

procedure TForm1.Circle_AnimationFinish(Sender: TObject);
begin
  frmLoad.Show;
  Circle_Animation.Enabled := false;
end;

procedure TForm1.FormShow(Sender: TObject);
begin
  Circle_Animation.Enabled := true;
end;

end.
