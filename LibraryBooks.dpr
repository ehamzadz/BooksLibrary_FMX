program LibraryBooks;

uses
  System.StartUpCopy,
  FMX.Forms,
  loading in 'loading.pas' {frmLoading},
  load in 'load.pas' {frmLoad},
  loadingIcon in 'loadingIcon.pas' {Form1},
  login in 'login.pas' {Form2},
  uDM in 'uDM.pas' {DM: TDataModule};

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TForm2, Form2);
  Application.CreateForm(TForm1, Form1);
  Application.CreateForm(TfrmLoad, frmLoad);
  Application.CreateForm(TfrmLoading, frmLoading);
  Application.CreateForm(TDM, DM);
  Application.Run;
end.
