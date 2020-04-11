object frm_splach: Tfrm_splach
  Left = 0
  Top = 0
  BorderIcons = []
  BorderStyle = bsSingle
  ClientHeight = 247
  ClientWidth = 526
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesktopCenter
  OnClose = FormClose
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 526
    Height = 247
    Align = alClient
    Color = clWhite
    ParentBackground = False
    TabOrder = 0
    object Label1: TLabel
      Left = 168
      Top = 16
      Width = 195
      Height = 50
      Caption = #1588#1593#1575#1585' '#1575#1604#1576#1585#1606#1575#1605#1580' '#1607#1606#1575
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -27
      Font.Name = 'Cairo SemiBold'
      Font.Style = [fsBold]
      ParentFont = False
      Layout = tlCenter
    end
    object lab_contuer: TLabel
      Left = 248
      Top = 183
      Width = 30
      Height = 50
      Alignment = taCenter
      Caption = '0%'
      Font.Charset = ANSI_CHARSET
      Font.Color = clRed
      Font.Height = -27
      Font.Name = 'Cairo'
      Font.Style = [fsBold]
      ParentFont = False
      Layout = tlCenter
    end
    object Label2: TLabel
      Left = 128
      Top = 88
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
    object ProgressBar1: TProgressBar
      Left = 67
      Top = 152
      Width = 369
      Height = 25
      TabOrder = 0
    end
  end
  object Timer1: TTimer
    Enabled = False
    Interval = 50
    OnTimer = Timer1Timer
    Left = 32
    Top = 24
  end
end
