unit load;

interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes, System.Variants,
  FMX.Types, FMX.Controls, FMX.Forms, FMX.Graphics, FMX.Dialogs, FMX.Objects,
  FMX.Layouts, FMX.Controls.Presentation, FMX.StdCtrls, FMX.Ani, FMX.Effects,
  FMX.Filter.Effects;

type
  TfrmLoad = class(TForm)
    Rectangle1: TRectangle;
    light_grey: TBrushObject;
    Image1: TImage;
    Rectangle2: TRectangle;
    Rectangle3: TRectangle;
    Text1: TText;
    Text2: TText;
    Rectangle4: TRectangle;
    Rectangle5: TRectangle;
    Rectangle6: TRectangle;
    Text3: TText;
    Text4: TText;
    ColorAnimation1: TColorAnimation;
    ColorAnimation2: TColorAnimation;
    Timer1: TTimer;
    Rectangle7: TRectangle;
    Rectangle8: TRectangle;
    ColorAnimation3: TColorAnimation;
    Text5: TText;
    SpeedButton1: TSpeedButton;
    FloatAnimation1: TFloatAnimation;
    Rectangle9: TRectangle;
    FloatAnimation2: TFloatAnimation;
    FloatAnimation3: TFloatAnimation;
    Line1: TLine;
    FloatAnimation4: TFloatAnimation;
    procedure Rectangle5Click(Sender: TObject);
    procedure FloatAnimation1Finish(Sender: TObject);
    procedure FloatAnimation2Finish(Sender: TObject);
    procedure FloatAnimation4Finish(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmLoad: TfrmLoad;

implementation

{$R *.fmx}

uses loading;

procedure TfrmLoad.FloatAnimation1Finish(Sender: TObject);
begin
  FloatAnimation2.Enabled := true;
end;

procedure TfrmLoad.FloatAnimation2Finish(Sender: TObject);
begin
  FloatAnimation3.Enabled := true;
end;

procedure TfrmLoad.FloatAnimation4Finish(Sender: TObject);
begin
  frmLoading.Show;
  FloatAnimation4.Enabled := false;
  line1.Visible := false;
end;

procedure TfrmLoad.Rectangle5Click(Sender: TObject);
begin
  line1.Width := 0;
  line1.Visible := true;
  FloatAnimation4.Enabled := true;
end;

end.
