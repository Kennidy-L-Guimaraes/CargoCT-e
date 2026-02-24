object Frm_NovoVeiculoEMotorista: TFrm_NovoVeiculoEMotorista
  Left = 0
  Top = 0
  Caption = 'Adicionar Veiculo e Motorista'
  ClientHeight = 549
  ClientWidth = 738
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  Position = poMainFormCenter
  TextHeight = 15
  object Pnl_Background: TPanel
    Left = 0
    Top = 0
    Width = 738
    Height = 549
    Align = alClient
    BevelOuter = bvNone
    Color = clWhite
    ParentBackground = False
    TabOrder = 0
    ExplicitWidth = 624
    ExplicitHeight = 439
    object Grbx_VeiculoMotorista: TGroupBox
      Left = 0
      Top = 18
      Width = 733
      Height = 252
      Cursor = crDrag
      Caption = 'Ve'#237'culo'
      Color = clWhite
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -21
      Font.Name = 'Segoe UI'
      Font.Style = [fsBold]
      ParentBackground = False
      ParentColor = False
      ParentFont = False
      TabOrder = 0
      object Pnl_VeiculoMotorista: TPanel
        Left = 87
        Top = 33
        Width = 334
        Height = 213
        BevelOuter = bvNone
        TabOrder = 0
        object Lbl_VeiculoMotoristaPlaca: TLabel
          Left = 16
          Top = 62
          Width = 38
          Height = 20
          Caption = 'Placa:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = 'Segoe UI'
          Font.Style = []
          ParentFont = False
        end
        object Lbl_VeiculoMotoristaPlacaUF: TLabel
          Left = 16
          Top = 97
          Width = 59
          Height = 20
          Caption = 'Placa UF:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = 'Segoe UI'
          Font.Style = []
          ParentFont = False
        end
        object Lbl_VeiculoMotoristaTipoVeiculo: TLabel
          Left = 16
          Top = 132
          Width = 65
          Height = 20
          Caption = 'T/Veiculo:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = 'Segoe UI'
          Font.Style = []
          ParentFont = False
        end
        object Lbl_VeiculoMotoristaCapacidade: TLabel
          Left = 16
          Top = 167
          Width = 104
          Height = 20
          Caption = 'Capacidade KG:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = 'Segoe UI'
          Font.Style = []
          ParentFont = False
        end
        object Lbl_VeiculoMotoristaMotoristaAssociado: TLabel
          Left = 16
          Top = 27
          Width = 93
          Height = 20
          Caption = 'Motorista Ass:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = 'Segoe UI'
          Font.Style = []
          ParentFont = False
        end
        object Edt_VeiculoMotoristaPlaca: TEdit
          Left = 72
          Top = 58
          Width = 252
          Height = 25
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Segoe UI'
          Font.Style = []
          NumbersOnly = True
          ParentFont = False
          TabOrder = 0
        end
        object Edt_VeiculoMotoristaTipoVeiculo: TEdit
          Left = 96
          Top = 128
          Width = 228
          Height = 25
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Segoe UI'
          Font.Style = []
          NumbersOnly = True
          ParentFont = False
          TabOrder = 1
        end
        object Edt_VeiculoMotoristaCapacidade: TEdit
          Left = 126
          Top = 163
          Width = 198
          Height = 25
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Segoe UI'
          Font.Style = []
          NumbersOnly = True
          ParentFont = False
          TabOrder = 2
        end
        object Cmbx_VeiculoMotoristaPlacaUF: TComboBox
          Left = 96
          Top = 93
          Width = 228
          Height = 25
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Segoe UI'
          Font.Style = []
          ItemIndex = 7
          ParentFont = False
          TabOrder = 3
          Text = 'ES'
          Items.Strings = (
            'AC'
            'AL'
            'AP'
            'AM'
            'BA'
            'CE'
            'DF'
            'ES'
            'GO'
            'MA'
            'MT'
            'MS'
            'MG'
            'PA'
            'PB'
            'PR'
            'PE'
            'PI'
            'RJ'
            'RN'
            'RS'
            'RO'
            'RR'
            'SC'
            'SP'
            'SE'
            'TO')
        end
        object Cmbx_VeiculoMotoristaMotoristaAssociado: TComboBox
          Left = 123
          Top = 23
          Width = 201
          Height = 25
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Segoe UI'
          Font.Style = []
          ItemIndex = 2
          ParentFont = False
          TabOrder = 4
          Text = 'Terceirizado'
          Items.Strings = (
            'Pr'#243'prio'
            'Agregado'
            'Terceirizado')
        end
      end
    end
    object GroupBox1: TGroupBox
      Left = 8
      Top = 284
      Width = 725
      Height = 249
      Caption = 'Motorista Associado'
      Color = clWhite
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -21
      Font.Name = 'Segoe UI'
      Font.Style = [fsBold]
      ParentBackground = False
      ParentColor = False
      ParentFont = False
      TabOrder = 1
      object Panel1: TPanel
        Left = 87
        Top = 30
        Width = 334
        Height = 213
        BevelOuter = bvNone
        TabOrder = 0
        object Label1: TLabel
          Left = 16
          Top = 27
          Width = 139
          Height = 20
          Caption = 'Motorista Associado:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = 'Segoe UI'
          Font.Style = []
          ParentFont = False
        end
        object Label2: TLabel
          Left = 16
          Top = 62
          Width = 38
          Height = 20
          Caption = 'Placa:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = 'Segoe UI'
          Font.Style = []
          ParentFont = False
        end
        object Label3: TLabel
          Left = 16
          Top = 97
          Width = 59
          Height = 20
          Caption = 'Placa UF:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = 'Segoe UI'
          Font.Style = []
          ParentFont = False
        end
        object Label4: TLabel
          Left = 16
          Top = 132
          Width = 65
          Height = 20
          Caption = 'T/Veiculo:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = 'Segoe UI'
          Font.Style = []
          ParentFont = False
        end
        object Label5: TLabel
          Left = 16
          Top = 167
          Width = 104
          Height = 20
          Caption = 'Capacidade KG:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = 'Segoe UI'
          Font.Style = []
          ParentFont = False
        end
        object ComboBox1: TComboBox
          Left = 161
          Top = 23
          Width = 163
          Height = 25
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Segoe UI'
          Font.Style = []
          ItemIndex = 2
          ParentFont = False
          TabOrder = 0
          Text = 'Pr'#243'prio'
          Items.Strings = (
            'Pr'#243'prio'
            'Agregado'
            'Terceirizado')
        end
        object Edit1: TEdit
          Left = 72
          Top = 58
          Width = 252
          Height = 25
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Segoe UI'
          Font.Style = []
          NumbersOnly = True
          ParentFont = False
          TabOrder = 1
        end
        object Edit2: TEdit
          Left = 96
          Top = 128
          Width = 228
          Height = 25
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Segoe UI'
          Font.Style = []
          NumbersOnly = True
          ParentFont = False
          TabOrder = 2
        end
        object Edit3: TEdit
          Left = 126
          Top = 163
          Width = 198
          Height = 25
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Segoe UI'
          Font.Style = []
          NumbersOnly = True
          ParentFont = False
          TabOrder = 3
        end
        object ComboBox2: TComboBox
          Left = 96
          Top = 93
          Width = 228
          Height = 25
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Segoe UI'
          Font.Style = []
          ItemIndex = 8
          ParentFont = False
          TabOrder = 4
          Text = 'GO'
          Items.Strings = (
            'AC'
            'AL'
            'AP'
            'AM'
            'BA'
            'CE'
            'DF'
            'ES'
            'GO'
            'MA'
            'MT'
            'MS'
            'MG'
            'PA'
            'PB'
            'PR'
            'PE'
            'PI'
            'RJ'
            'RN'
            'RS'
            'RO'
            'RR'
            'SC'
            'SP'
            'SE'
            'TO')
        end
      end
    end
  end
end
