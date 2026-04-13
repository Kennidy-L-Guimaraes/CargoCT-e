object Frm_CargoCteConfig: TFrm_CargoCteConfig
  Left = 0
  Top = 0
  AutoSize = True
  BorderIcons = [biSystemMenu]
  Caption = 'Configura'#231#245'es'
  ClientHeight = 471
  ClientWidth = 399
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  Position = poMainFormCenter
  OnCreate = FormCreate
  TextHeight = 15
  object Pnl_Background: TPanel
    Left = 0
    Top = 0
    Width = 399
    Height = 471
    Align = alClient
    BevelOuter = bvNone
    Color = clWhite
    ParentBackground = False
    TabOrder = 0
    object Pnl_ConfiguracoesBtns: TPanel
      Left = 0
      Top = 423
      Width = 399
      Height = 48
      Margins.Top = 0
      Margins.Bottom = 0
      Align = alBottom
      Anchors = [akLeft, akTop, akRight]
      AutoSize = True
      BevelOuter = bvNone
      ParentColor = True
      TabOrder = 0
      object Pnl_BtnSalvarConfiguracoes: TPanel
        AlignWithMargins = True
        Left = 5
        Top = 3
        Width = 195
        Height = 42
        Margins.Left = 5
        Align = alLeft
        Anchors = []
        BevelOuter = bvNone
        TabOrder = 0
        object Shp_BtnSalvarConfiguracoes: TShape
          Left = 0
          Top = 0
          Width = 195
          Height = 42
          Align = alClient
          Brush.Color = 4227072
          Pen.Color = clGreen
          Shape = stRoundRect
          ExplicitLeft = 312
          ExplicitTop = 16
          ExplicitWidth = 65
          ExplicitHeight = 65
        end
        object Btn_BtnSalvarrConfiguracoes: TSpeedButton
          Left = 0
          Top = 0
          Width = 195
          Height = 42
          Cursor = crHandPoint
          Align = alClient
          Caption = 'Salvar'
          Flat = True
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWhite
          Font.Height = -17
          Font.Name = 'Segoe UI'
          Font.Style = []
          ParentFont = False
          OnClick = Btn_BtnSalvarrConfiguracoesClick
          ExplicitLeft = 72
          ExplicitTop = 8
          ExplicitWidth = 23
          ExplicitHeight = 22
        end
      end
      object Pnl_BtnCancelarConfiguracoes: TPanel
        AlignWithMargins = True
        Left = 201
        Top = 3
        Width = 195
        Height = 42
        Margins.Left = 5
        Align = alRight
        Anchors = []
        BevelOuter = bvNone
        TabOrder = 1
        object Shp_BtnCancelarConfiguracoes: TShape
          Left = 0
          Top = 0
          Width = 195
          Height = 42
          Align = alClient
          Brush.Color = 168
          Pen.Color = clRed
          Shape = stRoundRect
          ExplicitLeft = 312
          ExplicitTop = 16
          ExplicitWidth = 65
          ExplicitHeight = 65
        end
        object Btn_BtnCancelarConfiguracoes: TSpeedButton
          Left = 0
          Top = 0
          Width = 195
          Height = 42
          Cursor = crHandPoint
          Align = alClient
          Caption = 'Cancelar'
          Flat = True
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWhite
          Font.Height = -17
          Font.Name = 'Segoe UI'
          Font.Style = []
          ParentFont = False
          OnClick = Btn_BtnCancelarConfiguracoesClick
          ExplicitLeft = 22
          ExplicitWidth = 178
          ExplicitHeight = 48
        end
      end
    end
    object Grbx_ConfiguracoesInterface: TGroupBox
      Left = 0
      Top = 16
      Width = 399
      Height = 129
      Caption = 'Configura'#231#245'es da Interace'
      TabOrder = 1
      object Lbl_ExibirHelpPanel: TLabel
        Left = 39
        Top = 26
        Width = 104
        Height = 15
        Caption = 'Exibir o HelpPanel? '
      end
      object Lbl_ExibirBanners: TLabel
        Left = 39
        Top = 49
        Width = 150
        Height = 15
        Caption = 'Exibir os Banners (Imagens)?'
      end
      object Lbl_ExibirValorTotal: TLabel
        Left = 39
        Top = 70
        Width = 205
        Height = 15
        Caption = 'Exibir o valor total em Notas Emitidas? '
      end
      object Lbl_HabilitarBotoesBancodeDados: TLabel
        Left = 39
        Top = 93
        Width = 309
        Height = 15
        Caption = 'Habilitar Bot'#245'es de Acesso ao Banco de Dados (Perigoso)? '
      end
      object Chbx_ExibirHelpPanel: TCheckBox
        Left = 16
        Top = 24
        Width = 17
        Height = 17
        Checked = True
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Segoe UI'
        Font.Style = []
        ParentFont = False
        State = cbChecked
        TabOrder = 0
      end
      object Chbx_ExibirBanners: TCheckBox
        Left = 16
        Top = 47
        Width = 17
        Height = 17
        Checked = True
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Segoe UI'
        Font.Style = []
        ParentFont = False
        State = cbChecked
        TabOrder = 1
      end
      object Chbx_ExibirValorTotalNotasEmitidas: TCheckBox
        Left = 16
        Top = 70
        Width = 17
        Height = 17
        Checked = True
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Segoe UI'
        Font.Style = []
        ParentFont = False
        State = cbChecked
        TabOrder = 2
      end
      object Chbx_HabilitarBtnBancoDeDados: TCheckBox
        Left = 16
        Top = 93
        Width = 17
        Height = 17
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Segoe UI'
        Font.Style = []
        ParentFont = False
        TabOrder = 3
      end
    end
    object Grbx_ConfiguracoesNotaCte: TGroupBox
      Left = 0
      Top = 151
      Width = 399
      Height = 58
      Caption = 'Configura'#231#245'es da Nota CT-e'
      TabOrder = 2
      object Lbl_ExibirLogonaNota: TLabel
        Left = 39
        Top = 24
        Width = 190
        Height = 15
        Caption = 'Exibir imagem (logo) na nota CT-e? '
      end
      object Chbx_ExibirLogoNotaCte: TCheckBox
        Left = 16
        Top = 24
        Width = 17
        Height = 17
        Checked = True
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Segoe UI'
        Font.Style = []
        ParentFont = False
        State = cbChecked
        TabOrder = 0
      end
    end
    object Pnl_BtnsBancoDeDados: TPanel
      Left = 0
      Top = 346
      Width = 399
      Height = 77
      Margins.Top = 0
      Margins.Bottom = 0
      Align = alBottom
      BevelOuter = bvLowered
      Enabled = False
      ParentColor = True
      TabOrder = 3
      object Btn_ExcluirBancoDeDados: TBitBtn
        Left = 16
        Top = 10
        Width = 139
        Height = 25
        Caption = 'Excluir Banco de Dados'
        DragCursor = crHandPoint
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Segoe UI'
        Font.Style = []
        ParentFont = False
        TabOrder = 0
      end
      object Btn_ExcluirTransportadoras: TBitBtn
        Left = 161
        Top = 9
        Width = 192
        Height = 25
        Caption = 'Excluir todas as transportadoras'
        DragCursor = crHandPoint
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Segoe UI'
        Font.Style = []
        ParentFont = False
        TabOrder = 1
      end
      object Btn_ConfiguracoesPadrao: TBitBtn
        Left = 16
        Top = 41
        Width = 139
        Height = 25
        Caption = 'Configura'#231#245'es Padr'#227'o'
        DragCursor = crHandPoint
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Segoe UI'
        Font.Style = []
        ParentFont = False
        TabOrder = 2
      end
    end
    object GrBx_ConfiguracoesdeDesign: TGroupBox
      Left = 0
      Top = 215
      Width = 399
      Height = 114
      Caption = 'Configura'#231#245'es de Design'
      ParentBackground = False
      TabOrder = 4
      object Pnl_ConfigCordeFundo: TLabel
        AlignWithMargins = True
        Left = 16
        Top = 26
        Width = 78
        Height = 15
        Margins.Left = 5
        Margins.Top = 5
        Margins.Right = 5
        Margins.Bottom = 5
        Caption = 'Cor de Fundo: '
      end
      object Lbl_ConfigCorBotoes: TLabel
        AlignWithMargins = True
        Left = 16
        Top = 58
        Width = 86
        Height = 15
        Margins.Left = 5
        Margins.Top = 5
        Margins.Right = 5
        Margins.Bottom = 5
        Caption = 'Cor dos Bot'#245'es: '
      end
      object Lbl_ConfigCordaFonte: TLabel
        AlignWithMargins = True
        Left = 16
        Top = 90
        Width = 71
        Height = 15
        Margins.Left = 5
        Margins.Top = 5
        Margins.Right = 5
        Margins.Bottom = 5
        Caption = 'Cor da Fonte:'
      end
      object Clbx_CorFundo: TColorBox
        AlignWithMargins = True
        Left = 104
        Top = 23
        Width = 145
        Height = 22
        Margins.Left = 5
        Margins.Top = 5
        Margins.Right = 5
        Margins.Bottom = 5
        Selected = clCream
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Segoe UI'
        Font.Style = []
        ParentFont = False
        TabOrder = 0
      end
      object Clbx_CordosBotoes: TColorBox
        AlignWithMargins = True
        Left = 112
        Top = 55
        Width = 137
        Height = 22
        Margins.Left = 5
        Margins.Top = 5
        Margins.Right = 5
        Margins.Bottom = 5
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Segoe UI'
        Font.Style = []
        ParentFont = False
        TabOrder = 1
      end
      object Clbx_CordaFonte: TColorBox
        AlignWithMargins = True
        Left = 97
        Top = 87
        Width = 152
        Height = 22
        Margins.Left = 5
        Margins.Top = 5
        Margins.Right = 5
        Margins.Bottom = 5
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Segoe UI'
        Font.Style = []
        ParentFont = False
        TabOrder = 2
      end
    end
  end
end
