program Project1;

uses
  Vcl.Forms,
  Unit1 in 'Unit1.pas' {frm_main},
  DataModule in 'DataModule.pas' {DM: TDataModule},
  Unit2 in 'Unit2.pas' {frm_login},
  Unit3 in 'Unit3.pas' {frm_inscription},
  splach in 'splach.pas' {frm_splach};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(Tfrm_login, frm_login);
  Application.CreateForm(Tfrm_main, frm_main);
  Application.CreateForm(TDM, DM);
  Application.CreateForm(Tfrm_inscription, frm_inscription);
  Application.CreateForm(Tfrm_splach, frm_splach);
  Application.Run;
end.
