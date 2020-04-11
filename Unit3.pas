unit Unit3;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls;

type
  Tfrm_inscription = class(TForm)
    Panel1: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    btn_cancel: TButton;
    btn_reset: TButton;
    edtnom: TEdit;
    edtincien_pass: TEdit;
    edtnouv_pass: TEdit;
    edtiNconfir_pass: TEdit;
    Check_box: TCheckBox;
    procedure btn_cancelClick(Sender: TObject);
    procedure btn_resetClick(Sender: TObject);
    procedure Check_boxClick(Sender: TObject);
    procedure edtnomKeyPress(Sender: TObject; var Key: Char);
    procedure edtincien_passKeyPress(Sender: TObject; var Key: Char);
    procedure edtnouv_passKeyPress(Sender: TObject; var Key: Char);
    procedure edtiNconfir_passKeyPress(Sender: TObject; var Key: Char);


  private
    { DÈclarations privÈes }
  public
    { DÈclarations publiques }
  end;

var
  frm_inscription: Tfrm_inscription;

implementation

{$R *.dfm}

uses DataModule, Unit1, Unit2;

procedure Tfrm_inscription.btn_cancelClick(Sender: TObject);
begin
 frm_login.Show;
 frm_inscription.Hide;
end;

procedure Tfrm_inscription.btn_resetClick(Sender: TObject);
var h : integer ;
begin
  begin
     h := 0;
     if (edtincien_pass.text='') or (edtnouv_pass.Text='') or (edtnom.Text='') or (edtiNconfir_pass.text='' )
       then showmessage ('„‰ ›Ÿ·ﬂ «œŒ· «·»Ì«‰«  Â‰«ﬂ Œ«‰«  ›«—€… ')
      else
  BEGIN
     DM.Fdquery1.first;
      while (not DM.Fdquery1.Eof) do
        begin
          if DM.Fdquery1.Fieldbyname('nom').Value = edtnom.text then
        begin
          if DM.Fdquery1.Fieldbyname('PassWord').value = edtincien_pass.Text then
         begin
           if edtnouv_pass.Text = edtiNconfir_pass.text then
         begin
           DM.Fdquery1.edit;
           DM.Fdquery1.Fieldbyname('PassWord').value := edtnouv_pass.Text;
           DM.Fdquery1.Post;
           h := 1;
           break;
         end
         else
         begin
           h := 2   ;
         end
         end
         else

         h:=0;
         break
      end
      else
       DM.Fdquery1.Next;
     END;
      if h = 2 then  showmessage ('ﬂ·„… «·„—Ê— ·Ì”  „ÿ«»ﬁ….. ')      ;
      if h = 0 then showmessage('«”„ «·„” Œœ„ √Ê ﬂ·„… «·„—Ê— Œ«ÿ∆…..');
      if h = 1 then showmessage('. „  €ÌÌ— ﬂ·„… «·„—Ê— »‰Ã«Õ - „»—Êﬂ');
    END;
    edtincien_pass.Text := '';
    edtnouv_pass.text := '' ;
    edtiNconfir_pass.text := '' ;
  end;


end;



procedure Tfrm_inscription.Check_boxClick(Sender: TObject);
begin
  if (Check_box.Checked) then
         edtincien_pass.passwordchar := #0
      else
         edtincien_pass.passwordchar := '*'  ;

    if (Check_box.Checked) then
         edtnouv_pass.passwordchar := #0
      else
         edtnouv_pass.passwordchar := '*'  ;

    if (Check_box.Checked) then
         edtiNconfir_pass.passwordchar := #0
      else
         edtiNconfir_pass.passwordchar := '*'  ;
end;


procedure Tfrm_inscription.edtincien_passKeyPress(Sender: TObject;
  var Key: Char);
begin
   if key =#13 then
   begin
     key := #0;
     edtnouv_pass.SetFocus;
   end else
     if key=#27 then
   begin
      key := #0;
      btn_cancel.Click;
   end;
end;

procedure Tfrm_inscription.edtiNconfir_passKeyPress(Sender: TObject;
  var Key: Char);
begin
   if key =#13 then
   begin
     key := #0;
     btn_reset.Click ;
   end else
     if key=#27 then
   begin
      key := #0;
      btn_cancel.Click;
   end;
end;

procedure Tfrm_inscription.edtnomKeyPress(Sender: TObject; var Key: Char);
begin
   if key =#13 then
   begin
     key := #0;
     edtincien_pass.SetFocus;
   end else
     if key=#27 then
   begin
      key := #0;
      btn_cancel.Click;
   end;
end;

procedure Tfrm_inscription.edtnouv_passKeyPress(Sender: TObject; var Key: Char);
begin
    if key =#13 then
   begin
     key := #0;
     edtiNconfir_pass.SetFocus;
   end else
     if key=#27 then
   begin
      key := #0;
      btn_cancel.Click;
   end;
end;

end.
