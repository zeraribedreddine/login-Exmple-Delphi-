object DM: TDM
  OldCreateOrder = False
  OnCreate = DataModuleCreate
  OnDestroy = DataModuleDestroy
  Height = 328
  Width = 608
  object FDConnection1: TFDConnection
    Params.Strings = (
      'Database=C:\Users\kikatokiro\Desktop\Login\DB\test1.mdb'
      'DriverID=MSAcc')
    Connected = True
    LoginPrompt = False
    AfterConnect = FDConnection1AfterConnect
    BeforeDisconnect = FDConnection1BeforeDisconnect
    Left = 272
    Top = 96
  end
  object FDQuery1: TFDQuery
    Active = True
    Connection = FDConnection1
    SQL.Strings = (
      'select * from Tabl_Login')
    Left = 176
    Top = 152
    object FDQuery1id: TFDAutoIncField
      FieldName = 'id'
      Origin = 'id'
      ProviderFlags = [pfInWhere, pfInKey]
      ReadOnly = True
    end
    object FDQuery1nom: TWideStringField
      FieldName = 'nom'
      Origin = 'nom'
      Size = 50
    end
    object FDQuery1PassWord: TWideStringField
      FieldName = 'PassWord'
      Origin = '[PassWord]'
      Size = 50
    end
    object FDQuery1droit: TWideStringField
      FieldName = 'droit'
      Origin = 'droit'
      Size = 50
    end
    object FDQuery1date: TSQLTimeStampField
      Alignment = taCenter
      FieldName = 'date'
      Origin = '[date]'
    end
  end
  object DataSource1: TDataSource
    DataSet = FDQuery1
    Left = 360
    Top = 160
  end
end
