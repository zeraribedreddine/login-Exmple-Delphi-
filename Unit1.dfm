object frm_main: Tfrm_main
  Left = 0
  Top = 0
  Caption = 'frm_main'
  ClientHeight = 431
  ClientWidth = 707
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object Label2: TLabel
    Left = 467
    Top = 23
    Width = 180
    Height = 50
    Alignment = taCenter
    Caption = #1575#1587#1605' '#1575#1604#1605#1587#1578#1582#1583#1605
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -27
    Font.Name = 'Cairo'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label3: TLabel
    Left = 114
    Top = 32
    Width = 148
    Height = 33
    Caption = 'Utilissateur '
    Font.Charset = ANSI_CHARSET
    Font.Color = clRed
    Font.Height = -27
    Font.Name = 'Roboto Bk'
    Font.Style = []
    ParentFont = False
  end
  object Label4: TLabel
    Left = 252
    Top = 112
    Width = 245
    Height = 50
    Caption = #1589#1604#1575#1581#1610#1575#1578' '#1575#1604#1605#1587#1578#1582#1583#1605#1610#1606
    Font.Charset = ANSI_CHARSET
    Font.Color = clBlack
    Font.Height = -27
    Font.Name = 'Cairo SemiBold'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label1: TLabel
    Left = 224
    Top = 368
    Width = 262
    Height = 39
    Caption = #1576#1585#1605#1580' '#1605#1606' '#1591#1585#1601' : '#1586#1585#1575#1585#1610' '#1576#1583#1585#1575#1604#1583#1610#1606
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -21
    Font.Name = 'Cairo SemiBold'
    Font.Style = [fsBold]
    ParentFont = False
    Layout = tlCenter
  end
  object btn_supp: TButton
    Left = 216
    Top = 264
    Width = 113
    Height = 49
    Caption = #1575#1604#1581#1584#1601
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -19
    Font.Name = 'Tajawal ExtraBold'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 0
    OnClick = btn_suppClick
  end
  object btn_print: TButton
    Left = 48
    Top = 264
    Width = 105
    Height = 49
    Caption = #1575#1604#1591#1576#1575#1593#1577
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -19
    Font.Name = 'Tajawal ExtraBold'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 1
    OnClick = btn_printClick
  end
  object btn_edit: TButton
    Left = 408
    Top = 264
    Width = 101
    Height = 49
    Caption = #1575#1604#1578#1593#1583#1610#1604
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -19
    Font.Name = 'Tajawal ExtraBold'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 2
    OnClick = btn_editClick
  end
  object btn_add: TButton
    Left = 576
    Top = 264
    Width = 91
    Height = 49
    Caption = #1575#1604#1575#1590#1575#1601#1577
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -19
    Font.Name = 'Tajawal ExtraBold'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 3
    OnClick = btn_addClick
  end
end
