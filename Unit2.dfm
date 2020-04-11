object frm_login: Tfrm_login
  Left = 0
  Top = 0
  Caption = 'frm_login'
  ClientHeight = 363
  ClientWidth = 550
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 550
    Height = 363
    Align = alClient
    Color = clWhite
    ParentBackground = False
    TabOrder = 0
    object Label1: TLabel
      Left = 370
      Top = 35
      Width = 139
      Height = 39
      Alignment = taCenter
      Caption = #1575#1587#1605' '#1575#1604#1605#1587#1578#1582#1583#1605' '
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -21
      Font.Name = 'Cairo SemiBold'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label2: TLabel
      Left = 402
      Top = 105
      Width = 107
      Height = 39
      Caption = #1603#1604#1605#1577' '#1575#1604#1605#1585#1608#1585
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -21
      Font.Name = 'Cairo SemiBold'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label3: TLabel
      Left = 287
      Top = 308
      Width = 222
      Height = 45
      Alignment = taCenter
      Caption = #1578#1594#1610#1610#1585' '#1603#1604#1605#1577' '#1575#1604#1605#1585#1608#1585' '#1567#1567
      Font.Charset = ANSI_CHARSET
      Font.Color = clRed
      Font.Height = -24
      Font.Name = 'Cairo Black'
      Font.Style = [fsBold]
      ParentFont = False
      OnClick = Label3Click
    end
    object btn_close: TButton
      Left = 56
      Top = 208
      Width = 123
      Height = 46
      Caption = #1575#1594#1604#1575#1602
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -21
      Font.Name = 'Cairo SemiBold'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 1
      OnClick = btn_closeClick
    end
    object btn_connect: TButton
      Left = 208
      Top = 208
      Width = 129
      Height = 46
      Caption = #1583#1582#1608#1604
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -21
      Font.Name = 'Cairo SemiBold'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 2
      OnClick = btn_connectClick
    end
    object edt_nom: TEdit
      Left = 56
      Top = 41
      Width = 281
      Height = 31
      Alignment = taCenter
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -19
      Font.Name = 'Roboto Bk'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
      OnKeyPress = edt_nomKeyPress
    end
    object edt_password: TEdit
      Left = 56
      Top = 111
      Width = 281
      Height = 31
      Alignment = taCenter
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -19
      Font.Name = 'Roboto Bk'
      Font.Style = []
      ParentFont = False
      PasswordChar = '*'
      TabOrder = 3
      OnKeyPress = edt_passwordKeyPress
    end
    object Check_B_motpass: TCheckBox
      Left = 209
      Top = 156
      Width = 128
      Height = 35
      Alignment = taLeftJustify
      Caption = #1575#1592#1607#1575#1585' / '#1575#1582#1601#1575#1569
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Cairo SemiBold'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 4
      OnClick = Check_B_motpassClick
    end
  end
end
