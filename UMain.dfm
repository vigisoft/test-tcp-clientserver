object Form1: TForm1
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'Testes com Socket'
  ClientHeight = 508
  ClientWidth = 636
  Color = clBtnFace
  DoubleBuffered = True
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  OnClose = FormClose
  PixelsPerInch = 96
  TextHeight = 13
  object Label8: TLabel
    Left = 544
    Top = 7
    Width = 66
    Height = 13
    Caption = 'MENSAGENS'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object GpConfig: TGridPanel
    Left = 0
    Top = 0
    Width = 636
    Height = 137
    Align = alTop
    BevelOuter = bvNone
    ColumnCollection = <
      item
        Value = 50.000000000000000000
      end
      item
        Value = 50.000000000000000000
      end>
    ControlCollection = <
      item
        Column = 0
        Control = GbClientCfg
        Row = 0
      end
      item
        Column = 1
        Control = GbServerCfg
        Row = 0
      end>
    RowCollection = <
      item
        Value = 100.000000000000000000
      end>
    ShowCaption = False
    TabOrder = 0
    object GbClientCfg: TGroupBox
      AlignWithMargins = True
      Left = 3
      Top = 3
      Width = 312
      Height = 131
      Align = alClient
      Caption = 'Cliente - Configura'#231#245'es'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 0
      object GpClientCfgIpts: TGridPanel
        AlignWithMargins = True
        Left = 5
        Top = 18
        Width = 302
        Height = 60
        Align = alTop
        BevelOuter = bvNone
        ColumnCollection = <
          item
            Value = 50.000000000000000000
          end
          item
            Value = 50.000000000000000000
          end>
        ControlCollection = <
          item
            Column = 0
            Control = Label1
            Row = 0
          end
          item
            Column = 1
            Control = Label4
            Row = 0
          end
          item
            Column = 0
            Control = Edit1
            Row = 1
          end
          item
            Column = 1
            Control = Edit3
            Row = 1
          end>
        RowCollection = <
          item
            Value = 50.000000000000000000
          end
          item
            Value = 50.000000000000000000
          end>
        ShowCaption = False
        TabOrder = 0
        object Label1: TLabel
          AlignWithMargins = True
          Left = 3
          Top = 3
          Width = 145
          Height = 27
          Align = alClient
          Alignment = taCenter
          Caption = 'Endere'#231'o IP / DNS'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          Layout = tlCenter
          WordWrap = True
          ExplicitWidth = 88
          ExplicitHeight = 13
        end
        object Label4: TLabel
          AlignWithMargins = True
          Left = 154
          Top = 3
          Width = 145
          Height = 27
          Align = alClient
          Alignment = taCenter
          Caption = 'Porta'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          Layout = tlCenter
          WordWrap = True
          ExplicitWidth = 26
          ExplicitHeight = 13
        end
        object Edit1: TEdit
          AlignWithMargins = True
          Left = 3
          Top = 33
          Width = 145
          Height = 24
          Align = alClient
          Alignment = taCenter
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          TabOrder = 0
          OnKeyPress = Edit1KeyPress
          ExplicitHeight = 21
        end
        object Edit3: TEdit
          AlignWithMargins = True
          Left = 154
          Top = 33
          Width = 145
          Height = 24
          Align = alClient
          Alignment = taCenter
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          NumbersOnly = True
          ParentFont = False
          TabOrder = 1
          Text = '8097'
          OnKeyPress = Edit3KeyPress
          ExplicitHeight = 21
        end
      end
      object GpClientCfgBtns: TGridPanel
        AlignWithMargins = True
        Left = 5
        Top = 85
        Width = 302
        Height = 41
        Align = alBottom
        BevelOuter = bvNone
        ColumnCollection = <
          item
            Value = 50.000000000000000000
          end
          item
            Value = 50.000000000000000000
          end>
        ControlCollection = <
          item
            Column = 0
            Control = Button2
            Row = 0
          end
          item
            Column = 1
            Control = Button4
            Row = 0
          end>
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        RowCollection = <
          item
            Value = 100.000000000000000000
          end>
        ShowCaption = False
        TabOrder = 1
        object Button2: TButton
          AlignWithMargins = True
          Left = 3
          Top = 3
          Width = 145
          Height = 35
          Align = alClient
          Caption = 'CONECTAR'
          TabOrder = 0
          WordWrap = True
          OnClick = Button2Click
        end
        object Button4: TButton
          AlignWithMargins = True
          Left = 154
          Top = 3
          Width = 145
          Height = 35
          Align = alClient
          Caption = 'DESCONECTAR'
          Enabled = False
          TabOrder = 1
          WordWrap = True
          OnClick = Button4Click
        end
      end
    end
    object GbServerCfg: TGroupBox
      AlignWithMargins = True
      Left = 321
      Top = 3
      Width = 312
      Height = 131
      Align = alClient
      Caption = 'Servidor - Configura'#231#245'es'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 1
      object GpServerCfgIpts: TGridPanel
        AlignWithMargins = True
        Left = 5
        Top = 18
        Width = 302
        Height = 60
        Align = alTop
        BevelOuter = bvNone
        ColumnCollection = <
          item
            Value = 100.000000000000000000
          end>
        ControlCollection = <
          item
            Column = 0
            Control = Label2
            Row = 0
          end
          item
            Column = 0
            Control = Edit2
            Row = 1
          end>
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        RowCollection = <
          item
            Value = 50.000000000000000000
          end
          item
            Value = 50.000000000000000000
          end>
        ShowCaption = False
        TabOrder = 0
        object Label2: TLabel
          AlignWithMargins = True
          Left = 3
          Top = 3
          Width = 296
          Height = 27
          Align = alClient
          Alignment = taCenter
          Caption = 'Porta'
          Layout = tlCenter
          WordWrap = True
          ExplicitWidth = 26
          ExplicitHeight = 13
        end
        object Edit2: TEdit
          AlignWithMargins = True
          Left = 3
          Top = 33
          Width = 296
          Height = 24
          Align = alClient
          Alignment = taCenter
          NumbersOnly = True
          TabOrder = 0
          Text = '8097'
          OnKeyPress = Edit2KeyPress
          ExplicitHeight = 21
        end
      end
      object GpServerCfgBtns: TGridPanel
        AlignWithMargins = True
        Left = 5
        Top = 84
        Width = 302
        Height = 42
        Align = alClient
        BevelOuter = bvNone
        ColumnCollection = <
          item
            Value = 50.000000000000000000
          end
          item
            Value = 50.000000000000000000
          end>
        ControlCollection = <
          item
            Column = 0
            Control = Button1
            Row = 0
          end
          item
            Column = 1
            Control = Button3
            Row = 0
          end>
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        RowCollection = <
          item
            Value = 100.000000000000000000
          end>
        ShowCaption = False
        TabOrder = 1
        object Button1: TButton
          AlignWithMargins = True
          Left = 3
          Top = 3
          Width = 145
          Height = 36
          Align = alClient
          Caption = 'INICIAR'
          TabOrder = 0
          OnClick = Button1Click
        end
        object Button3: TButton
          AlignWithMargins = True
          Left = 154
          Top = 3
          Width = 145
          Height = 36
          Align = alClient
          Caption = 'PARAR'
          Enabled = False
          TabOrder = 1
          OnClick = Button3Click
        end
      end
    end
  end
  object GpMessages: TGridPanel
    Left = 0
    Top = 137
    Width = 636
    Height = 110
    Align = alTop
    BevelOuter = bvNone
    ColumnCollection = <
      item
        Value = 50.000000000000000000
      end
      item
        Value = 50.000000000000000000
      end>
    ControlCollection = <
      item
        Column = 1
        Control = GbServerMsg
        Row = 0
      end
      item
        Column = 0
        Control = GbClientMsg
        Row = 0
      end>
    RowCollection = <
      item
        Value = 100.000000000000000000
      end>
    ShowCaption = False
    TabOrder = 1
    object GbServerMsg: TGroupBox
      AlignWithMargins = True
      Left = 321
      Top = 3
      Width = 312
      Height = 104
      Align = alBottom
      Caption = 'Servidor - Resposta'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 0
      object GpServerMsgBtns: TGridPanel
        AlignWithMargins = True
        Left = 5
        Top = 57
        Width = 302
        Height = 42
        Align = alBottom
        BevelOuter = bvNone
        ColumnCollection = <
          item
            Value = 33.333333333333340000
          end
          item
            Value = 33.333333333333340000
          end
          item
            Value = 33.333333333333340000
          end>
        ControlCollection = <
          item
            Column = 0
            Control = CheckBox2
            Row = 0
          end
          item
            Column = 2
            Control = Button6
            Row = 0
          end
          item
            Column = 1
            Control = ComboBox2
            Row = 0
          end>
        RowCollection = <
          item
            Value = 100.000000000000000000
          end>
        ShowCaption = False
        TabOrder = 0
        object CheckBox2: TCheckBox
          AlignWithMargins = True
          Left = 3
          Top = 3
          Width = 94
          Height = 36
          Align = alClient
          Caption = 'Limpar ap'#243's envio'
          Checked = True
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          State = cbChecked
          TabOrder = 0
          WordWrap = True
        end
        object Button6: TButton
          AlignWithMargins = True
          Left = 203
          Top = 3
          Width = 96
          Height = 36
          Align = alClient
          Caption = 'ENVIAR'
          Enabled = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          TabOrder = 1
          OnClick = Button6Click
        end
        object ComboBox2: TComboBox
          AlignWithMargins = True
          Left = 103
          Top = 3
          Width = 94
          Height = 21
          Align = alClient
          AutoDropDown = True
          AutoCloseUp = True
          CharCase = ecUpperCase
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          TabOrder = 2
          Text = 'FINALIZADOR'
          Items.Strings = (
            'PADR'#195'O'
            'CR'
            'LF'
            'CRLF')
        end
      end
      object GpServerMsgCfg: TGridPanel
        Left = 2
        Top = 15
        Width = 308
        Height = 41
        Align = alTop
        BevelOuter = bvNone
        ColumnCollection = <
          item
            Value = 75.000000000000030000
          end
          item
            Value = 24.999999999999970000
          end>
        ControlCollection = <
          item
            Column = 0
            Control = Edit5
            Row = 0
          end
          item
            Column = 1
            Control = CheckBox5
            Row = 0
          end>
        ExpandStyle = emFixedSize
        RowCollection = <
          item
            Value = 100.000000000000000000
          end>
        ShowCaption = False
        TabOrder = 1
        object Edit5: TEdit
          AlignWithMargins = True
          Left = 3
          Top = 3
          Width = 225
          Height = 21
          Align = alTop
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          TabOrder = 0
          OnChange = Edit5Change
        end
        object CheckBox5: TCheckBox
          AlignWithMargins = True
          Left = 234
          Top = 3
          Width = 71
          Height = 35
          Align = alClient
          Caption = 'Eco'
          Checked = True
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          State = cbChecked
          TabOrder = 1
          WordWrap = True
        end
      end
    end
    object GbClientMsg: TGroupBox
      AlignWithMargins = True
      Left = 3
      Top = 3
      Width = 312
      Height = 104
      Align = alClient
      Caption = 'Cliente - Requisi'#231#227'o'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 1
      object GpClientMsgBtns: TGridPanel
        AlignWithMargins = True
        Left = 5
        Top = 57
        Width = 302
        Height = 42
        Align = alBottom
        BevelOuter = bvNone
        ColumnCollection = <
          item
            Value = 33.333333333333340000
          end
          item
            Value = 33.333333333333340000
          end
          item
            Value = 33.333333333333340000
          end>
        ControlCollection = <
          item
            Column = 0
            Control = CheckBox1
            Row = 0
          end
          item
            Column = 2
            Control = Button5
            Row = 0
          end
          item
            Column = 1
            Control = ComboBox1
            Row = 0
          end>
        RowCollection = <
          item
            Value = 100.000000000000000000
          end>
        ShowCaption = False
        TabOrder = 0
        object CheckBox1: TCheckBox
          AlignWithMargins = True
          Left = 3
          Top = 3
          Width = 94
          Height = 36
          Align = alClient
          Caption = 'Limpar ap'#243's envio'
          Checked = True
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          State = cbChecked
          TabOrder = 0
          WordWrap = True
        end
        object Button5: TButton
          AlignWithMargins = True
          Left = 203
          Top = 3
          Width = 96
          Height = 36
          Align = alClient
          Caption = 'ENVIAR'
          Enabled = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          TabOrder = 1
          OnClick = Button5Click
        end
        object ComboBox1: TComboBox
          AlignWithMargins = True
          Left = 103
          Top = 3
          Width = 94
          Height = 21
          Align = alClient
          AutoDropDown = True
          AutoCloseUp = True
          BevelInner = bvNone
          CharCase = ecUpperCase
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          TabOrder = 2
          Text = 'FINALIZADOR'
          Items.Strings = (
            'PADR'#195'O'
            'CR'
            'LF'
            'CRLF')
        end
      end
      object Edit4: TEdit
        AlignWithMargins = True
        Left = 5
        Top = 18
        Width = 302
        Height = 21
        Align = alTop
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        TabOrder = 1
        OnChange = Edit4Change
        OnKeyPress = Edit4KeyPress
      end
    end
  end
  object GbLog: TGroupBox
    AlignWithMargins = True
    Left = 3
    Top = 250
    Width = 630
    Height = 255
    Align = alClient
    Caption = 'Mensagens'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 2
    object GpLog: TGridPanel
      AlignWithMargins = True
      Left = 5
      Top = 18
      Width = 620
      Height = 232
      Align = alClient
      BevelOuter = bvNone
      ColumnCollection = <
        item
          Value = 100.000000000000000000
        end>
      ControlCollection = <
        item
          Column = 0
          Control = Memo1
          Row = 0
        end
        item
          Column = 0
          Control = GridPanel1
          Row = 1
        end>
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      RowCollection = <
        item
          Value = 83.968696469956000000
        end
        item
          Value = 16.031303530044000000
        end>
      ShowCaption = False
      TabOrder = 0
      object Memo1: TMemo
        AlignWithMargins = True
        Left = 3
        Top = 3
        Width = 614
        Height = 188
        Align = alClient
        ScrollBars = ssVertical
        TabOrder = 0
      end
      object GridPanel1: TGridPanel
        AlignWithMargins = True
        Left = 3
        Top = 197
        Width = 614
        Height = 32
        Align = alClient
        BevelOuter = bvNone
        ColumnCollection = <
          item
            Value = 33.333333333333340000
          end
          item
            Value = 33.333333333333340000
          end
          item
            Value = 33.333333333333340000
          end>
        ControlCollection = <
          item
            Column = 0
            Control = Button7
            Row = 0
          end
          item
            Column = 1
            Control = CheckBox3
            Row = 0
          end
          item
            Column = 2
            Control = CheckBox4
            Row = 0
          end>
        RowCollection = <
          item
            Value = 100.000000000000000000
          end>
        TabOrder = 1
        object Button7: TButton
          AlignWithMargins = True
          Left = 3
          Top = 3
          Width = 198
          Height = 26
          Align = alClient
          Caption = 'Limpar Mensagens'
          TabOrder = 0
          WordWrap = True
          OnClick = Button7Click
        end
        object CheckBox3: TCheckBox
          AlignWithMargins = True
          Left = 207
          Top = 3
          Width = 198
          Height = 26
          Align = alClient
          Caption = 'Limpar a cada 30 registros'
          Checked = True
          State = cbChecked
          TabOrder = 1
          WordWrap = True
        end
        object CheckBox4: TCheckBox
          AlignWithMargins = True
          Left = 411
          Top = 3
          Width = 200
          Height = 26
          Align = alClient
          Caption = 'Incluir data / hora no log'
          Checked = True
          State = cbChecked
          TabOrder = 2
          WordWrap = True
        end
      end
    end
  end
  object ServerSocket1: TServerSocket
    Active = False
    Port = 0
    ServerType = stNonBlocking
    OnListen = ServerSocket1Listen
    OnClientConnect = ServerSocket1ClientConnect
    OnClientDisconnect = ServerSocket1ClientDisconnect
    OnClientRead = ServerSocket1ClientRead
    OnClientError = ServerSocket1ClientError
    Left = 248
    Top = 328
  end
  object ClientSocket1: TClientSocket
    Active = False
    ClientType = ctNonBlocking
    Port = 0
    OnConnecting = ClientSocket1Connecting
    OnConnect = ClientSocket1Connect
    OnDisconnect = ClientSocket1Disconnect
    OnRead = ClientSocket1Read
    OnError = ClientSocket1Error
    Left = 328
    Top = 320
  end
end
