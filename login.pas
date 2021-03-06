unit login;

interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes, System.Variants,
  FMX.Types, FMX.Controls, FMX.Forms, FMX.Graphics, FMX.Dialogs, FMX.StdCtrls,
  FMX.Objects, FMX.Controls.Presentation,FMX.Platform, FMX.Ani, FMX.Edit, FMX.Layouts;

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
    Text9: TText;
    Text11: TText;
    StyleBook1: TStyleBook;
    Text13: TText;
    Rectangle14: TRectangle;
    Edit2: TEdit;
    Text14: TText;
    Rectangle15: TRectangle;
    Edit3: TEdit;
    Text15: TText;
    Rectangle16: TRectangle;
    Edit4: TEdit;
    VertScrollBox1: TVertScrollBox;
    Line2: TLine;
    FloatAnimation3: TFloatAnimation;
    Text16: TText;
    Rectangle17: TRectangle;
    Text17: TText;
    Text18: TText;
    Rectangle13: TRectangle;
    Rectangle18: TRectangle;
    Text12: TText;
    Text19: TText;
    Rectangle19: TRectangle;
    Image2: TImage;
    FloatAnimation5: TFloatAnimation;
    Rectangle20: TRectangle;
    VertScrollBox2: TVertScrollBox;
    Text20: TText;
    Text21: TText;
    Rectangle21: TRectangle;
    Edit1: TEdit;
    Text24: TText;
    Text25: TText;
    Rectangle24: TRectangle;
    Text26: TText;
    Text27: TText;
    FloatAnimation6: TFloatAnimation;
    Z: TText;
    Rectangle22: TRectangle;
    Edit5: TEdit;
    Line3: TLine;
    FloatAnimation7: TFloatAnimation;
    procedure FloatAnimation4Finish(Sender: TObject);
    procedure Rectangle8Click(Sender: TObject);
    procedure Rectangle6Click(Sender: TObject);
    procedure FloatAnimation2Finish(Sender: TObject);
    procedure back_title_opacityFinish(Sender: TObject);
    procedure Rectangle11Click(Sender: TObject);
    procedure FloatAnimation3Finish(Sender: TObject);
    procedure Rectangle17Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure Text4Click(Sender: TObject);
    procedure Rectangle19Click(Sender: TObject);
    procedure FloatAnimation6Finish(Sender: TObject);
    procedure FloatAnimation5Finish(Sender: TObject);
    procedure Rectangle24Click(Sender: TObject);
    procedure FloatAnimation7Finish(Sender: TObject);
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
  floatanimation2.enabled := false;
  floatanimation2.Inverse := floatanimation2.Inverse <> true;
end;

procedure TForm2.FloatAnimation3Finish(Sender: TObject);
begin
  Rectangle11Click(nil);
  frmLoading.show;
  floatanimation3.Enabled := false;
  line2.Width := 0;
end;

procedure TForm2.FloatAnimation4Finish(Sender: TObject);
begin
  frmLoading.show;
  floatanimation4.Enabled := false;
  line1.Width := 0;
end;

procedure TForm2.FloatAnimation5Finish(Sender: TObject);
begin
  FloatAnimation5.enabled := false;
  FloatAnimation5.Inverse := FloatAnimation5.Inverse <> true;
end;

procedure TForm2.FloatAnimation6Finish(Sender: TObject);
begin
  floatanimation6.enabled := false;
  floatanimation6.Inverse := floatanimation6.Inverse <> true;
end;

procedure TForm2.FloatAnimation7Finish(Sender: TObject);
begin
  Rectangle19Click(nil);
  frmLoading.show;
  floatanimation7.Enabled := false;
  line3.Width := 0;
end;

procedure TForm2.FormCreate(Sender: TObject);
begin
  rectangle9.Position.Y := rectangle1.Height;
  floatanimation2.StartValue := rectangle1.Height;

  rectangle13.Position.Y := rectangle1.Height;
  floatanimation6.StartValue := rectangle1.Height;
end;

procedure TForm2.Rectangle11Click(Sender: TObject);
begin
  Rectangle9.Align := TalignLayout.none;
  floatanimation2.Enabled := true;
end;

procedure TForm2.Rectangle17Click(Sender: TObject);
begin
  floatanimation3.Enabled := true;
end;

procedure TForm2.Rectangle19Click(Sender: TObject);
begin
  Rectangle13.Align := TalignLayout.none;
  floatanimation6.Enabled := true;
end;

procedure TForm2.Rectangle24Click(Sender: TObject);
begin
  floatanimation7.Enabled := true;
end;

procedure TForm2.Rectangle6Click(Sender: TObject);
begin
  Rectangle9.Align := TalignLayout.client;
  floatanimation2.Enabled := true;
end;

procedure TForm2.Rectangle8Click(Sender: TObject);
begin
  back_title_opacity.Enabled := true;
  floatanimation4.Enabled := true;
end;

procedure TForm2.Text4Click(Sender: TObject);
begin
  Rectangle13.Align := TalignLayout.client;
  floatanimation6.Enabled := true;
end;

end.
