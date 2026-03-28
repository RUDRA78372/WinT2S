object Form1: TForm1
  Left = 0
  Top = 0
  BorderStyle = bsDialog
  Caption = 'WinT2S'
  ClientHeight = 500
  ClientWidth = 680
  Color = 3684408
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -13
  Font.Name = 'Segoe UI'
  Font.Style = []
  OnCreate = FormCreate
  TextHeight = 17
  object Memo1: TMemo
    AlignWithMargins = True
    Left = 12
    Top = 56
    Width = 656
    Height = 299
    Margins.Left = 12
    Margins.Top = 12
    Margins.Right = 12
    Margins.Bottom = 0
    Align = alClient
    BorderStyle = bsNone
    Color = 4276029
    Font.Charset = DEFAULT_CHARSET
    Font.Color = 15329769
    Font.Height = -13
    Font.Name = 'Segoe UI'
    Font.Style = []
    Lines.Strings = (
      'Write anything to make the program say it')
    ParentFont = False
    ScrollBars = ssVertical
    TabOrder = 0
  end
  object TitlePanel: TPanel
    Left = 0
    Top = 0
    Width = 680
    Height = 44
    Align = alTop
    BevelOuter = bvNone
    Color = 3289650
    TabOrder = 2
    object AppLabel: TLabel
      Left = 14
      Top = 14
      Width = 50
      Height = 19
      Caption = 'WinT2S'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = 15329769
      Font.Height = -14
      Font.Name = 'Segoe UI Semibold'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object SubLabel: TLabel
      Left = 88
      Top = 16
      Width = 74
      Height = 13
      Caption = 'Text to Speech'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = 8947848
      Font.Height = -11
      Font.Name = 'Segoe UI'
      Font.Style = []
      ParentFont = False
    end
  end
  object Panel1: TPanel
    Left = 0
    Top = 355
    Width = 680
    Height = 145
    Align = alBottom
    BevelOuter = bvNone
    Color = 3289650
    TabOrder = 1
    object Label1: TLabel
      Left = 14
      Top = 76
      Width = 32
      Height = 13
      Caption = 'Speed'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = 8947848
      Font.Height = -11
      Font.Name = 'Segoe UI'
      Font.Style = []
      ParentFont = False
    end
    object SepLabel: TLabel
      Left = 0
      Top = 0
      Width = 680
      Height = 1
      Align = alTop
      AutoSize = False
      Color = 5263440
      ParentColor = False
    end
    object Button1: TButton
      Left = 14
      Top = 14
      Width = 80
      Height = 32
      Caption = 'Play'
      TabOrder = 0
      OnClick = Button1Click
    end
    object Button2: TButton
      Left = 102
      Top = 14
      Width = 80
      Height = 32
      Caption = 'Pause'
      Enabled = False
      TabOrder = 3
      OnClick = Button2Click
    end
    object Button3: TButton
      Left = 190
      Top = 14
      Width = 110
      Height = 32
      Caption = 'Load from File'
      TabOrder = 4
      OnClick = Button3Click
    end
    object ListBox1: TListBox
      Left = 346
      Top = 8
      Width = 322
      Height = 128
      Color = 4276029
      Font.Charset = DEFAULT_CHARSET
      Font.Color = 15329769
      Font.Height = -12
      Font.Name = 'Segoe UI'
      Font.Style = []
      ItemHeight = 15
      ParentFont = False
      TabOrder = 1
    end
    object TrackBar1: TTrackBar
      Left = 14
      Top = 92
      Width = 320
      Height = 40
      Min = -10
      TabOrder = 2
      TickMarks = tmBoth
      OnChange = TrackBar1Change
    end
  end
  object OpenTextFileDialog1: TOpenTextFileDialog
    Left = 600
    Top = 230
  end
  object Timer1: TTimer
    OnTimer = Timer1Timer
    Left = 556
    Top = 230
  end
end
