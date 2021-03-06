unit loading;

interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes, System.Variants,
  FMX.Types, FMX.Controls, FMX.Forms, FMX.Graphics, FMX.Dialogs, FMX.ExtCtrls,
  FMX.TabControl, FMX.Layouts, FMX.Objects, FMX.Controls.Presentation,
  FMX.StdCtrls, FMX.Ani, FMX.Memo.Types, FMX.ScrollBox, FMX.Memo,
  REST.Backend.PushTypes, REST.Backend.MetaTypes, System.JSON,
  System.PushNotification, REST.Backend.BindSource, REST.Backend.PushDevice,
  Data.Bind.Components, Data.Bind.ObjectScope, REST.Backend.ServiceComponents, FMX.PushNotification.Android,
  RTL.Controls, FMX.Edit, System.ImageList, FMX.ImgList;

type
  TfrmLoading = class(TForm)
    Rectangle1: TRectangle;
    tabs: TRectangle;
    Tab: TTabControl;
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
    Rectangle9: TRectangle;
    Rectangle10: TRectangle;
    MemoLog: TMemo;
    Text1: TText;
    VertScrollBox2: TVertScrollBox;
    VertScrollBox3: TVertScrollBox;
    Text2: TText;
    Text3: TText;
    TabItem4: TTabItem;
    VertScrollBox4: TVertScrollBox;
    Text4: TText;
    TabItem5: TTabItem;
    VertScrollBox5: TVertScrollBox;
    Text5: TText;
    current: TRoundRect;
    Rectangle12: TRectangle;
    SpeedButton1: TSpeedButton;
    Switch1: TSwitch;
    ImageList1: TImageList;
    ColorAnimation2: TColorAnimation;
    ColorAnimation3: TColorAnimation;
    ColorAnimation4: TColorAnimation;
    Rectangle11: TRectangle;
    ColorAnimation5: TColorAnimation;
    Rectangle13: TRectangle;
    light_grey: TBrushObject;
    Edit1: TEdit;
    StyleBook1: TStyleBook;
    procedure FormCreate(Sender: TObject);
    procedure Rectangle7Click(Sender: TObject);
    procedure Rectangle8Click(Sender: TObject);
    procedure Rectangle9Click(Sender: TObject);
    procedure Rectangle10Click(Sender: TObject);
    procedure Rectangle11Click(Sender: TObject);
    procedure Switch1Switch(Sender: TObject);
  private
    { Private declarations }
    // PUSH NOTIFICATION ID
    FDeviceId: string;
    FDeviceToken: string;
    procedure OnServiceConnectionChange(Sender: TObject; PushChanges: TPushService.TChanges);
    procedure OnReceiveNotificationEvent(Sender: TObject; const ServiceNotification: TPushServiceNotification);
  public
    { Public declarations }
  end;

var
  frmLoading: TfrmLoading;

implementation

{$R *.fmx}
{$R *.SmXhdpiPh.fmx ANDROID}

procedure TfrmLoading.FormCreate(Sender: TObject);
var
   PushService: TPushService;
   ServiceConnection: TPushServiceConnection;
   Notifications: TArray<TPushServiceNotification>;
begin
   PushService := TPushServiceManager.Instance.GetServiceByName(TPushService.TServiceNames.FCM);
   ServiceConnection := TPushServiceConnection.Create(PushService);
   ServiceConnection.Active := True;
   ServiceConnection.OnChange := OnServiceConnectionChange;
   ServiceConnection.OnReceiveNotification := OnReceiveNotificationEvent;

   FDeviceId := PushService.DeviceIDValue[TPushService.TDeviceIDNames.DeviceId];
   MemoLog.Lines.Add('DeviceID: ' + FDeviceId);
   MemoLog.Lines.Add('Ready to receive!');

   // Checks notification on startup, if application was launched fromcold start
   // by tapping on Notification in Notification Center
   Notifications := PushService.StartupNotifications;

   if Length(Notifications) > 0 then
     begin
         MemoLog.Lines.Add('-----------------------------------------');
         MemoLog.Lines.Add('DataKey = ' + Notifications[0].DataKey);
         MemoLog.Lines.Add('Json = ' + Notifications[0].Json.ToString);
         MemoLog.Lines.Add('DataObject = ' + Notifications[0].DataObject.ToString);
         MemoLog.Lines.Add('-----------------------------------------');
     end;
end;

procedure TfrmLoading.OnReceiveNotificationEvent(Sender: TObject;
  const ServiceNotification: TPushServiceNotification);
var
   MessageText: string;
begin
    MemoLog.Lines.Add('-----------------------------------------');
    MemoLog.Lines.Add('DataKey = ' + ServiceNotification.DataKey);
    MemoLog.Lines.Add('Json = ' + ServiceNotification.Json.ToString);
    MemoLog.Lines.Add('DataObject = ' +
    ServiceNotification.DataObject.ToString);
    MemoLog.Lines.Add('---------------------------------------');
end;

procedure TfrmLoading.OnServiceConnectionChange(Sender: TObject;
  PushChanges: TPushService.TChanges);
var
   PushService: TPushService;
begin
   PushService := TPushServiceManager.Instance.GetServiceByName(TPushService.TServiceNames.FCM);

   if TPushService.TChange.DeviceToken in PushChanges then
     begin
         FDeviceToken := PushService.DeviceTokenValue[TPushService.TDeviceTokenNames.DeviceToken];
         MemoLog.Lines.Add('Firebase Token: ' + FDeviceToken);
         Log.d('Firebase device token: token=' + FDeviceToken);
     end;

   if (TPushService.TChange.Status in PushChanges) and (PushService.Status = TPushService.TStatus.StartupError) then
       MemoLog.Lines.Add('Error: ' + PushService.StartupError);
end;



procedure TfrmLoading.Rectangle10Click(Sender: TObject);
var
  this :TButton;
begin
  this := TButton(sender);
  current.Parent := this;
  tab.TabIndex := 3;
end;

procedure TfrmLoading.Rectangle11Click(Sender: TObject);
var
  this :TButton;
begin
  this := TButton(sender);
  current.Parent := this;
  tab.TabIndex := 4;
end;

procedure TfrmLoading.Rectangle7Click(Sender: TObject);
var
  this :TButton;
begin
  this := TButton(sender);
  current.Parent := this;

  tab.TabIndex := 0;
end;

procedure TfrmLoading.Rectangle8Click(Sender: TObject);
var
  this :TButton;
begin
  this := TButton(sender);
  current.Parent := this;
  tab.TabIndex := 1;
end;

procedure TfrmLoading.Rectangle9Click(Sender: TObject);
var
  this :TButton;
begin
  this := TButton(sender);
  current.Parent := this;
  tab.TabIndex := 2;
end;

procedure TfrmLoading.Switch1Switch(Sender: TObject);
begin
  if (MemoLog.Visible = true) then MemoLog.Visible :=false
  else MemoLog.Visible := true;
end;

end.
