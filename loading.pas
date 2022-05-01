unit loading;

interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes, System.Variants,
  FMX.Types, FMX.Controls, FMX.Forms, FMX.Graphics, FMX.Dialogs, FMX.ExtCtrls,
  FMX.TabControl, FMX.Layouts, FMX.Objects, FMX.Controls.Presentation,
  FMX.StdCtrls, FMX.Ani;

type
  TForm2 = class(TForm)
    Rectangle1: TRectangle;
    tabs: TRectangle;
    TabControl1: TTabControl;
    VertScrollBox1: TVertScrollBox;
    TabItem1: TTabItem;
    TabItem2: TTabItem;
    TabItem3: TTabItem;
    GridPanelLayout1: TGridPanelLayout;
    Rectangle2: TRectangle;
    Rectangle3: TRectangle;
    Rectangle4: TRectangle;
    Rectangle5: TRectangle;
    home_img_black: TImage;
    Image2: TImage;
    Image3: TImage;
    Image4: TImage;
    Rectangle6: TRectangle;
    Image1: TImage;
    ColorAnimation1: TColorAnimation;
    Rectangle7: TRectangle;
    Rectangle8: TRectangle;
    ColorAnimation2: TColorAnimation;
    Rectangle9: TRectangle;
    ColorAnimation3: TColorAnimation;
    Rectangle10: TRectangle;
    ColorAnimation4: TColorAnimation;
    Rectangle11: TRectangle;
    ColorAnimation5: TColorAnimation;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form2: TForm2;

implementation

{$R *.fmx}
{$R *.SmXhdpiPh.fmx ANDROID}

end.
