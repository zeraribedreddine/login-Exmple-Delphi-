unit Unit2;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls;

type
  Tfrm_login = class(TForm)
    Panel1: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    btn_close: TButton;
    btn_connect: TButton;
    edt_nom: TEdit;
    edt_password: TEdit;
    Check_B_motpass: TCheckBox;
    procedure btn_closeClick(Sender: TObject);
    procedure btn_connectClick(Sender: TObject);
    procedure Label3Click(Sender: TObject);
    procedure Check_B_motpassClick(Sender: TObject);
    procedure edt_nomKeyPress(Sender: TObject; var Key: Char);
    procedure edt_passwordKeyPress(Sender: TObject; var Key: Char);

  private
    { DÈclarations privÈes }
  public
    { DÈclarations publiques }
  end;

var
  frm_login: Tfrm_login;

implementation

{$R *.dfm}

uses DataModule, Unit1, Unit3, splach;

procedure Tfrm_login.btn_closeClick(Sender: TObject);
begin
  Application.Terminate;
end;

procedure Tfrm_login.btn_connectClick(Sender: TObject);
var
  droit: string;
begin
  begin
    DM.Fdquery1.SQL.Clear;
    DM.Fdquery1.SQL.Add('select * from Tabl_Login where nom = ' + QuotedStr(edt_nom.text) + ' and PassWord = ' + QuotedStr(edt_password.text) + '');
    DM.Fdquery1.open;

    /// ///////// code de permmition d utilissateur ////////////////
    begin
      if not DM.DataSource1.DataSet.IsEmpty then
      begin
        droit := DM.DataSource1.DataSet.Fieldbyname('droit').AsString;
        if AnsiPos('0', droit) <> 0 then
        begin
          frm_main.btn_supp.Enabled := false;
          frm_main.btn_edit.Enabled := false;
          frm_main.btn_add.Enabled := false;
        end;
      end;
    end;
    /// ///////////// code de permmition d utilissateur //////////////////
    if not DM.Fdquery1.Eof then
    begin
      frm_login.hide;
      frm_splach.Show;
      frm_main.Label3.Caption := edt_nom.text;
     // ------
     if DM.Fdquery1.Fieldbyname('nom').Value = edt_nom.text then
      begin
        DM.Fdquery1.Edit;
        DM.Fdquery1.Fieldbyname('date').AsDateTime := Now;
      end;
        DM.Fdquery1.Post;
       // ------
    end
    else
      messagedlg(' «·—ﬁ„ «·”—Ì Œ«ÿÏ¡ ', mterror, [mbok], 0);
    edt_nom.Clear;
    edt_password.Clear;
  end;

end;

procedure Tfrm_login.Check_B_motpassClick(Sender: TObject);
begin
  begin
    if (Check_B_motpass.Checked) then
      edt_password.passwordchar := #0
    else
      edt_password.passwordchar := '*';
  end;
end;

procedure Tfrm_login.edt_nomKeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13 then
  begin
    Key := #0;
    edt_password.SetFocus;
  end
  else if Key = #27 then
  begin
    Key := #0;
    btn_close.Click;
  end;
end;

procedure Tfrm_login.edt_passwordKeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13 then
  begin
    Key := #0;
    btn_connect.Click;
  end
  else if Key = #27 then
  begin
    Key := #0;
    btn_close.Click;
  end;
end;

procedure Tfrm_login.Label3Click(Sender: TObject);
begin
  frm_inscription.Show;
  frm_login.hide;
end;

end.
