object frm_inscription: Tfrm_inscription
  Left = 0
  Top = 0
  Caption = 'frm_inscription'
  ClientHeight = 426
  ClientWidth = 598
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
    Width = 598
    Height = 426
    Align = alClient
    Color = clWhite
    ParentBackground = False
    TabOrder = 0
    ExplicitLeft = 200
    ExplicitTop = 216
    ExplicitWidth = 185
    ExplicitHeight = 41
    object Label1: TLabel
      Left = 444
      Top = 26
      Width = 134
      Height = 39
      Alignment = taCenter
      Caption = #1575#1587#1605' '#1575#1604#1605#1587#1578#1582#1583#1605
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -21
      Font.Name = 'Cairo SemiBold'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label2: TLabel
      Left = 394
      Top = 90
      Width = 184
      Height = 39
      Caption = #1603#1604#1605#1577' '#1575#1604#1605#1585#1608#1585' '#1575#1604#1602#1583#1610#1605#1577
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -21
      Font.Name = 'Cairo SemiBold'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label3: TLabel
      Left = 401
      Top = 170
      Width = 177
      Height = 39
      Caption = #1603#1604#1605#1577' '#1575#1604#1605#1585#1608#1585' '#1575#1604#1581#1583#1610#1579#1577
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -21
      Font.Name = 'Cairo SemiBold'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label4: TLabel
      Left = 415
      Top = 245
      Width = 163
      Height = 39
      Caption = #1578#1575#1603#1610#1583' '#1603#1604#1605#1577' '#1575#1604#1605#1585#1608#1585' '
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -21
      Font.Name = 'Cairo SemiBold'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object btn_cancel: TButton
      Left = 64
      Top = 339
      Width = 123
      Height = 46
      Caption = #1585#1580#1608#1593
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -19
      Font.Name = 'Cairo Black'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 1
      OnClick = btn_cancelClick
    end
    object btn_reset: TButton
      Left = 216
      Top = 339
      Width = 153
      Height = 46
      Caption = #1575#1593#1575#1583#1577' '#1575#1604#1578#1593#1610#1610#1606' '
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -19
      Font.Name = 'Cairo Black'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 2
      OnClick = btn_resetClick
    end
    object edtnom: TEdit
      Left = 64
      Top = 32
      Width = 305
      Height = 31
      Alignment = taCenter
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -19
      Font.Name = 'Roboto Bk'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
      OnKeyPress = edtnomKeyPress
    end
    object edtincien_pass: TEdit
      Left = 64
      Top = 96
      Width = 305
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
      OnKeyPress = edtincien_passKeyPress
    end
    object edtnouv_pass: TEdit
      Left = 64
      Top = 176
      Width = 305
      Height = 31
      Alignment = taCenter
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -19
      Font.Name = 'Roboto Bk'
      Font.Style = []
      ParentFont = False
      PasswordChar = '*'
      TabOrder = 4
      OnKeyPress = edtnouv_passKeyPress
    end
    object edtiNconfir_pass: TEdit
      Left = 64
      Top = 251
      Width = 305
      Height = 31
      Alignment = taCenter
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -19
      Font.Name = 'Roboto Bk'
      Font.Style = []
      ParentFont = False
      PasswordChar = '*'
      TabOrder = 5
      OnKeyPress = edtiNconfir_passKeyPress
    end
    object Check_box: TCheckBox
      Left = 234
      Top = 291
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
      TabOrder = 6
      OnClick = Check_boxClick
    end
  end
end
