unit DataModule;

interface

uses
  System.SysUtils, System.Classes, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Error, FireDAC.UI.Intf, FireDAC.Phys.Intf, FireDAC.Stan.Def,
  FireDAC.Stan.Pool, FireDAC.Stan.Async, FireDAC.Phys, FireDAC.Phys.MSAcc,
  FireDAC.Phys.MSAccDef, FireDAC.VCLUI.Wait, FireDAC.Stan.Param, FireDAC.DatS,
  FireDAC.DApt.Intf, FireDAC.DApt, Data.DB, FireDAC.Comp.DataSet,
  FireDAC.Comp.Client;

type
  TDM = class(TDataModule)
    FDConnection1: TFDConnection;
    FDQuery1: TFDQuery;
    DataSource1: TDataSource;
    FDQuery1id: TFDAutoIncField;
    FDQuery1nom: TWideStringField;
    FDQuery1PassWord: TWideStringField;
    FDQuery1droit: TWideStringField;
    FDQuery1date: TSQLTimeStampField;
    procedure DataModuleCreate(Sender: TObject);
    procedure DataModuleDestroy(Sender: TObject);
    procedure FDConnection1AfterConnect(Sender: TObject);
    procedure FDConnection1BeforeDisconnect(Sender: TObject);

  private
    { Déclarations privées }
  public
    { Déclarations publiques }
  end;

var
  DM: TDM;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

uses Unit1, Unit2, Unit3;

{$R *.dfm}

procedure TDM.DataModuleCreate(Sender: TObject);
begin
 FDConnection1.Connected := true;
end;

procedure TDM.DataModuleDestroy(Sender: TObject);
begin
  FDConnection1.Connected := false ;
end;

procedure TDM.FDConnection1AfterConnect(Sender: TObject);
begin
 FDQuery1.Active := true;
end;



procedure TDM.FDConnection1BeforeDisconnect(Sender: TObject);
begin
 FDQuery1.Active := false;
end;

end.
