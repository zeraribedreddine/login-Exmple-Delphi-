unit Unit1;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls;

type
  Tfrm_main = class(TForm)
    Label2: TLabel;
    Label3: TLabel;
    btn_supp: TButton;
    btn_print: TButton;
    btn_edit: TButton;
    btn_add: TButton;
    Label4: TLabel;
    Label1: TLabel;
    procedure btn_addClick(Sender: TObject);
    procedure btn_editClick(Sender: TObject);
    procedure btn_suppClick(Sender: TObject);
    procedure btn_printClick(Sender: TObject);


  private
    { Déclarations privées }
  public
    { Déclarations publiques }
  end;

var
  frm_main: Tfrm_main;

implementation

{$R *.dfm}

uses DataModule, Unit2, Unit3;

procedure Tfrm_main.btn_suppClick(Sender: TObject);
begin
  ShowMessage('äÚã áÏíß ÕáÇÍíÇÊ ÇáÍĞİ');
end;



procedure Tfrm_main.btn_editClick(Sender: TObject);
begin
  ShowMessage('äÚã áÏíß ÕáÇÍíÇÊ ÇáÊÚÏíá');
end;

procedure Tfrm_main.btn_printClick(Sender: TObject);
begin
  ShowMessage('äÚã áÏíß ÕáÇÍíÇÊ ÇáØÈÇÚÉ');
end;

Procedure Tfrm_main.btn_addClick(Sender: TObject);
begin
  ShowMessage('äÚã áÏíß ÕáÇÍíÇÊ ÇáÇÙÇİÉ');
end;

end.
