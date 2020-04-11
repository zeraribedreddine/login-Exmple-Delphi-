unit splach;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Vcl.ComCtrls, Vcl.StdCtrls;

type
  Tfrm_splach = class(TForm)
    Panel1: TPanel;
    Label1: TLabel;
    ProgressBar1: TProgressBar;
    Timer1: TTimer;
    lab_contuer: TLabel;
    Label2: TLabel;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure Timer1Timer(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Déclarations privées }
  public
    { Déclarations publiques }
  end;

var
  frm_splach: Tfrm_splach;

implementation

{$R *.dfm}

uses DataModule, Unit1;

procedure Tfrm_splach.FormClose(Sender: TObject; var Action: TCloseAction);
begin
   Action := caFree ;
   Self := nil ;
end;

procedure Tfrm_splach.FormShow(Sender: TObject);
begin
  Timer1.Enabled := true;
end;

procedure Tfrm_splach.Timer1Timer(Sender: TObject);
begin
   ProgressBar1.Position := ProgressBar1.Position +1 ;
   lab_contuer.Caption := IntToStr (ProgressBar1.Position) + '%';
    if ProgressBar1.Position = 100 then
     begin
       Timer1.Enabled := false;
       frm_splach.Close;
       frm_main.Show ;
     end;
end;

end.
