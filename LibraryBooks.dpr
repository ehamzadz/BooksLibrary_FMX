program LibraryBooks;

uses
  System.StartUpCopy,
  FMX.Forms,
  loading in 'loading.pas' {frmLoading},
  load in 'load.pas' {frmLoad},
  loadingIcon in 'loadingIcon.pas' {Form1};

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TfrmLoad, frmLoad);
  Application.CreateForm(TfrmLoading, frmLoading);
  Application.CreateForm(TForm1, Form1);
  Application.Run;
end.
