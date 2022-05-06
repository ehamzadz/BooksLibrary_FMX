unit login;

interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes, System.Variants,
  FMX.Types, FMX.Controls, FMX.Forms, FMX.Graphics, FMX.Dialogs, FMX.StdCtrls,
  FMX.Objects, FMX.Controls.Presentation, FMX.Ani;

type
  TForm2 = class(TForm)
    Rectangle1: TRectangle;
    Rectangle2: TRectangle;
    Rectangle3: TRectangle;
    Rectangle4: TRectangle;
    Rectangle5: TRectangle;
    Text3: TText;
    Text4: TText;
    Rectangle6: TRectangle;
    Text1: TText;
    Rectangle7: TRectangle;
    Rectangle8: TRectangle;
    Text2: TText;
    SpeedButton1: TSpeedButton;
    Text5: TText;
    Text6: TText;
    Text7: TText;
    Line1: TLine;
    FloatAnimation4: TFloatAnimation;
    FloatAnimation1: TFloatAnimation;
    Rectangle9: TRectangle;
    Rectangle10: TRectangle;
    FloatAnimation2: TFloatAnimation;
    Text8: TText;
    Text10: TText;
    Image1: TImage;
    Rectangle11: TRectangle;
    back_title_opacity: TFloatAnimation;
    Rectangle12: TRectangle;
    procedure FloatAnimation4Finish(Sender: TObject);
    procedure Rectangle8Click(Sender: TObject);
    procedure Rectangle6Click(Sender: TObject);
    procedure FloatAnimation2Finish(Sender: TObject);
    procedure back_title_opacityFinish(Sender: TObject);
    procedure Rectangle11Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form2: TForm2;

implementation

{$R *.fmx}

uses loading;

procedure TForm2.back_title_opacityFinish(Sender: TObject);
begin
  back_title_opacity.enabled := false;
  back_title_opacity.Inverse := back_title_opacity.Inverse <> true;
end;

procedure TForm2.FloatAnimation2Finish(Sender: TObject);
begin
  back_title_opacity.Enabled := true;
  floatanimation2.enabled := false;
  floatanimation2.Inverse := floatanimation2.Inverse <> true;
end;

procedure TForm2.FloatAnimation4Finish(Sender: TObject);
begin
  frmLoading.show;
  floatanimation4.Enabled := false;
  line1.Width := 0;
end;

procedure TForm2.Rectangle11Click(Sender: TObject);
begin
  floatanimation2.Enabled := true;
end;

procedure TForm2.Rectangle6Click(Sender: TObject);
begin
  floatanimation2.Enabled := true;
end;

procedure TForm2.Rectangle8Click(Sender: TObject);
begin
  floatanimation4.Enabled := true;
end;

end.