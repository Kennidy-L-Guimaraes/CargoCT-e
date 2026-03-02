object Frm_NovaFrota: TFrm_NovaFrota
  Left = 0
  Top = 0
  Caption = 'Adicionar Nova Frota'
  ClientHeight = 494
  ClientWidth = 785
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
    Width = 785
    Height = 494
    Align = alClient
    BevelOuter = bvNone
    Color = clWhite
    ParentBackground = False
    TabOrder = 0
    object PagCtr_NovaFrota: TPageControl
      Left = 0
      Top = 0
      Width = 785
      Height = 494
      ActivePage = TbSh_NovoMotorista
      Align = alClient
      TabOrder = 0
      object TbSh_NovoMotorista: TTabSheet
        Caption = 'Novo Motorista'
        object Lbl_CadastroCompletoRNTRCANTT: TLabel
          Left = 28
          Top = 324
          Width = 292
          Height = 17
          Cursor = crHandPoint
          Caption = 'Clique aqui para cadastro completo RNTRC/ANTT'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = 16744448
          Font.Height = -13
          Font.Name = 'Segoe UI'
          Font.Style = []
          ParentFont = False
        end
        object GrBx_DadosDoMotorista: TGroupBox
          Left = 9
          Top = 4
          Width = 385
          Height = 314
          Caption = 'Dados do Motorista'
          Color = clWhite
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'Segoe UI'
          Font.Style = [fsBold]
          ParentBackground = False
          ParentColor = False
          ParentFont = False
          TabOrder = 0
          object Pnl_DadosDoMotorista: TPanel
            AlignWithMargins = True
            Left = 3
            Top = 22
            Width = 360
            Height = 285
            Margins.Top = 10
            Margins.Bottom = 10
            BevelOuter = bvNone
            TabOrder = 0
            object Lbl_DadosDoMotoristaNome: TLabel
              Left = 16
              Top = 20
              Width = 114
              Height = 20
              Margins.Top = 5
              Margins.Bottom = 5
              Caption = 'Nome Completo:'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -15
              Font.Name = 'Segoe UI'
              Font.Style = []
              ParentFont = False
            end
            object Lbl_DadosDoMotoristaCPF: TLabel
              Left = 16
              Top = 215
              Width = 31
              Height = 20
              Margins.Top = 5
              Margins.Bottom = 5
              Caption = 'CPF: '
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -15
              Font.Name = 'Segoe UI'
              Font.Style = []
              ParentFont = False
            end
            object Lbl_DadosDoMotoristaRG: TLabel
              Left = 208
              Top = 85
              Width = 26
              Height = 20
              Margins.Top = 5
              Margins.Bottom = 5
              Caption = 'RG: '
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -15
              Font.Name = 'Segoe UI'
              Font.Style = []
              ParentFont = False
            end
            object Lbl_DadosDoMotoristaDataDeNascimento: TLabel
              Left = 16
              Top = 150
              Width = 143
              Height = 20
              Margins.Top = 5
              Margins.Bottom = 5
              Caption = 'Data de Nascimento: '
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -15
              Font.Name = 'Segoe UI'
              Font.Style = []
              ParentFont = False
            end
            object Lbl_DadosDoMotoristaEstadoCivil: TLabel
              Left = 16
              Top = 85
              Width = 80
              Height = 20
              Margins.Top = 5
              Margins.Bottom = 5
              Caption = 'Estado Civil:'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -15
              Font.Name = 'Segoe UI'
              Font.Style = []
              ParentFont = False
            end
            object Lbl_DadosDoMotoristaTelefone: TLabel
              Left = 208
              Top = 20
              Width = 64
              Height = 20
              Margins.Top = 5
              Margins.Bottom = 5
              Caption = 'Telefone: '
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -15
              Font.Name = 'Segoe UI'
              Font.Style = []
              ParentFont = False
            end
            object Lbl_DadosDoMotoristaCEP: TLabel
              Left = 208
              Top = 150
              Width = 32
              Height = 20
              Margins.Top = 5
              Margins.Bottom = 5
              Caption = 'CEP: '
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -15
              Font.Name = 'Segoe UI'
              Font.Style = []
              ParentFont = False
            end
            object Lbl_ReqNomeCompleto: TLabel
              Left = 136
              Top = 20
              Width = 7
              Height = 20
              Margins.Top = 5
              Margins.Bottom = 5
              Caption = '*'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clRed
              Font.Height = -15
              Font.Name = 'Segoe UI'
              Font.Style = [fsBold]
              ParentFont = False
            end
            object Lbl_ReqDadosMotoristaDataNascimento: TLabel
              Left = 165
              Top = 150
              Width = 7
              Height = 20
              Margins.Top = 5
              Margins.Bottom = 5
              Caption = '*'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clRed
              Font.Height = -15
              Font.Name = 'Segoe UI'
              Font.Style = [fsBold]
              ParentFont = False
            end
            object Lbl_ReqCEP: TLabel
              Left = 246
              Top = 150
              Width = 7
              Height = 20
              Margins.Top = 5
              Margins.Bottom = 5
              Caption = '*'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clRed
              Font.Height = -15
              Font.Name = 'Segoe UI'
              Font.Style = [fsBold]
              ParentFont = False
            end
            object Lbl_ReqTelefone: TLabel
              Left = 278
              Top = 20
              Width = 7
              Height = 20
              Margins.Top = 5
              Margins.Bottom = 5
              Caption = '*'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clRed
              Font.Height = -15
              Font.Name = 'Segoe UI'
              Font.Style = [fsBold]
              ParentFont = False
            end
            object Lbl_ReqRG: TLabel
              Left = 240
              Top = 85
              Width = 7
              Height = 20
              Margins.Top = 5
              Margins.Bottom = 5
              Caption = '*'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clRed
              Font.Height = -15
              Font.Name = 'Segoe UI'
              Font.Style = [fsBold]
              ParentFont = False
            end
            object Lbl_ReqDadosMotoristaCPF: TLabel
              Left = 53
              Top = 215
              Width = 7
              Height = 20
              Margins.Top = 5
              Margins.Bottom = 5
              Caption = '*'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clRed
              Font.Height = -15
              Font.Name = 'Segoe UI'
              Font.Style = [fsBold]
              ParentFont = False
            end
            object Edt_DadosDoMotoristaNome: TEdit
              Left = 16
              Top = 50
              Width = 156
              Height = 25
              Margins.Top = 5
              Margins.Bottom = 5
              Font.Charset = DEFAULT_CHARSET
              Font.Color = 4934475
              Font.Height = -13
              Font.Name = 'Segoe UI'
              Font.Style = []
              NumbersOnly = True
              ParentFont = False
              TabOrder = 0
            end
            object CmBx_DadosDoMotoristaEstadoCivil: TComboBox
              Left = 16
              Top = 115
              Width = 128
              Height = 25
              Margins.Top = 5
              Margins.Bottom = 5
              Font.Charset = DEFAULT_CHARSET
              Font.Color = 4934475
              Font.Height = -13
              Font.Name = 'Segoe UI'
              Font.Style = []
              ParentFont = False
              TabOrder = 1
              Text = 'Casado'
              Items.Strings = (
                'Casado'
                'Solteiro'
                'Divorciado'
                'Viuvo')
            end
            object MsEdt_DadosDoMotoristaTelefone: TMaskEdit
              AlignWithMargins = True
              Left = 208
              Top = 50
              Width = 123
              Height = 25
              Margins.Top = 5
              Margins.Bottom = 5
              EditMask = '!\(99\)0000-00000;1;_'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = 4934475
              Font.Height = -13
              Font.Name = 'Segoe UI'
              Font.Style = []
              MaxLength = 14
              ParentFont = False
              TabOrder = 2
              Text = '(00)0000-00000'
            end
            object MsEdt_DadosDoMotoristaRG: TMaskEdit
              AlignWithMargins = True
              Left = 208
              Top = 115
              Width = 128
              Height = 25
              Margins.Top = 5
              Margins.Bottom = 5
              EditMask = '99.999.999-9;1;_'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = 4934475
              Font.Height = -13
              Font.Name = 'Segoe UI'
              Font.Style = []
              MaxLength = 12
              ParentFont = False
              TabOrder = 3
              Text = '00.000.000-0'
            end
            object MsEdt_DadosDoMotoristaDataNascimento: TMaskEdit
              AlignWithMargins = True
              Left = 16
              Top = 180
              Width = 128
              Height = 25
              Margins.Top = 5
              Margins.Bottom = 5
              EditMask = '!99/99/00;1;_'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = 4934475
              Font.Height = -13
              Font.Name = 'Segoe UI'
              Font.Style = []
              MaxLength = 8
              ParentFont = False
              TabOrder = 4
              Text = '  /  /  '
            end
            object MsEdt_DadosDoMotoristaCPF: TMaskEdit
              AlignWithMargins = True
              Left = 16
              Top = 245
              Width = 125
              Height = 25
              Margins.Top = 5
              Margins.Bottom = 5
              EditMask = '999.999.999.-99;1;_'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = 4934475
              Font.Height = -13
              Font.Name = 'Segoe UI'
              Font.Style = []
              MaxLength = 15
              ParentFont = False
              TabOrder = 5
              Text = '000.000.000.-00'
            end
            object MsEdt_DadosDoMotoristaCEP: TMaskEdit
              AlignWithMargins = True
              Left = 208
              Top = 180
              Width = 126
              Height = 25
              Margins.Top = 5
              Margins.Bottom = 5
              EditMask = '99999-999;1;_'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = 4934475
              Font.Height = -13
              Font.Name = 'Segoe UI'
              Font.Style = []
              MaxLength = 9
              ParentFont = False
              TabOrder = 6
              Text = '00000-000'
            end
          end
        end
        object Pnl_NovoMotoristaBtns: TPanel
          Left = 0
          Top = 409
          Width = 777
          Height = 55
          Align = alBottom
          BevelOuter = bvNone
          BorderWidth = 10
          Color = clWhite
          ParentBackground = False
          TabOrder = 1
          object Pnl_BtnSalvarNovoMotorista: TPanel
            AlignWithMargins = True
            Left = 615
            Top = 10
            Width = 150
            Height = 35
            Margins.Left = 2
            Margins.Top = 0
            Margins.Right = 2
            Margins.Bottom = 0
            Align = alRight
            BevelOuter = bvNone
            TabOrder = 0
            object Shp_BtnSalvarNovoMotorista: TShape
              Left = 0
              Top = 0
              Width = 150
              Height = 35
              Align = alClient
              Brush.Color = 4227072
              Pen.Color = clGreen
              Shape = stRoundRect
              ExplicitLeft = 312
              ExplicitTop = 16
              ExplicitWidth = 65
              ExplicitHeight = 65
            end
            object Btn_SalvarNovoMotorista: TSpeedButton
              Left = 0
              Top = 0
              Width = 150
              Height = 35
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
              ExplicitLeft = -6
              ExplicitHeight = 36
            end
          end
          object Pnl_BtnCancelarNovoMotorista: TPanel
            AlignWithMargins = True
            Left = 461
            Top = 10
            Width = 150
            Height = 35
            Margins.Left = 2
            Margins.Top = 0
            Margins.Right = 2
            Margins.Bottom = 0
            Align = alRight
            BevelOuter = bvNone
            TabOrder = 1
            object Shp_BtnCancelarNovoMotorista: TShape
              Left = 0
              Top = 0
              Width = 150
              Height = 35
              Align = alClient
              Brush.Color = 10197915
              Pen.Color = clGray
              Shape = stRoundRect
              ExplicitLeft = 312
              ExplicitTop = 16
              ExplicitWidth = 65
              ExplicitHeight = 65
            end
            object Btn_CancelarNovoMotorista: TSpeedButton
              Left = 0
              Top = 0
              Width = 150
              Height = 35
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
              OnClick = Btn_CancelarNovoMotoristaClick
              ExplicitLeft = 22
              ExplicitWidth = 178
              ExplicitHeight = 48
            end
          end
        end
        object GrBx_Habilitacao: TGroupBox
          Left = 400
          Top = 4
          Width = 367
          Height = 314
          Caption = 'Habilita'#231#227'o'
          Color = clWhite
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'Segoe UI'
          Font.Style = [fsBold]
          ParentBackground = False
          ParentColor = False
          ParentFont = False
          TabOrder = 2
          object Pnl_Habilitacao: TPanel
            Left = 13
            Top = 24
            Width = 340
            Height = 287
            BevelOuter = bvNone
            TabOrder = 0
            object Lbl_HabilitacaoTipoDeMotorista: TLabel
              AlignWithMargins = True
              Left = 6
              Top = 18
              Width = 126
              Height = 20
              Margins.Top = 5
              Margins.Bottom = 5
              Caption = 'Tipo de Motorista: '
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -15
              Font.Name = 'Segoe UI'
              Font.Style = []
              ParentFont = False
            end
            object Lbl_HabilitacaoNumeroCNH: TLabel
              AlignWithMargins = True
              Left = 6
              Top = 83
              Width = 96
              Height = 20
              Margins.Top = 5
              Margins.Bottom = 5
              Caption = 'N'#250'mero CNH: '
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -15
              Font.Name = 'Segoe UI'
              Font.Style = []
              ParentFont = False
            end
            object Lbl_HabilitacaoValidadeCNH: TLabel
              AlignWithMargins = True
              Left = 6
              Top = 148
              Width = 100
              Height = 20
              Margins.Top = 5
              Margins.Bottom = 5
              Caption = 'Validade CNH: '
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -15
              Font.Name = 'Segoe UI'
              Font.Style = []
              ParentFont = False
            end
            object Lbl_HabilitacaoCategoria: TLabel
              AlignWithMargins = True
              Left = 6
              Top = 213
              Width = 72
              Height = 20
              Margins.Top = 5
              Margins.Bottom = 5
              Caption = 'Categoria: '
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -15
              Font.Name = 'Segoe UI'
              Font.Style = []
              ParentFont = False
            end
            object Lbl_HabilitacaoValidadeExamMedico: TLabel
              AlignWithMargins = True
              Left = 196
              Top = 18
              Width = 62
              Height = 60
              Margins.Top = 5
              Margins.Bottom = 5
              Caption = 'Validade Exame M'#233'dico: '
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -15
              Font.Name = 'Segoe UI'
              Font.Style = []
              ParentFont = False
              WordWrap = True
            end
            object Lbl_ReqHabilitacaoValidadeCNH: TLabel
              AlignWithMargins = True
              Left = 112
              Top = 148
              Width = 7
              Height = 20
              Margins.Top = 5
              Margins.Bottom = 5
              Caption = '*'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clRed
              Font.Height = -15
              Font.Name = 'Segoe UI'
              Font.Style = [fsBold]
              ParentFont = False
            end
            object Lbl_ReqHabilitacaoNumeroCNH: TLabel
              AlignWithMargins = True
              Left = 108
              Top = 77
              Width = 7
              Height = 20
              Margins.Top = 5
              Margins.Bottom = 5
              Caption = '*'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clRed
              Font.Height = -15
              Font.Name = 'Segoe UI'
              Font.Style = [fsBold]
              ParentFont = False
            end
            object Lbl_ReqHabilitacaoTipoMotorista: TLabel
              AlignWithMargins = True
              Left = 138
              Top = 18
              Width = 7
              Height = 20
              Margins.Top = 5
              Margins.Bottom = 5
              Caption = '*'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clRed
              Font.Height = -15
              Font.Name = 'Segoe UI'
              Font.Style = [fsBold]
              ParentFont = False
            end
            object Lbl_ReqHabilitacaoCategoria: TLabel
              AlignWithMargins = True
              Left = 84
              Top = 213
              Width = 7
              Height = 20
              Margins.Top = 5
              Margins.Bottom = 5
              Caption = '*'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clRed
              Font.Height = -15
              Font.Name = 'Segoe UI'
              Font.Style = [fsBold]
              ParentFont = False
            end
            object Lbl_ReqHabilitacaoValidadeExame: TLabel
              AlignWithMargins = True
              Left = 261
              Top = 52
              Width = 7
              Height = 20
              Margins.Top = 5
              Margins.Bottom = 5
              Caption = '*'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clRed
              Font.Height = -15
              Font.Name = 'Segoe UI'
              Font.Style = [fsBold]
              ParentFont = False
            end
            object CmBx_HabilitacaoTipoMotorista: TComboBox
              AlignWithMargins = True
              Left = 6
              Top = 48
              Width = 156
              Height = 25
              Margins.Top = 5
              Margins.Bottom = 5
              Font.Charset = DEFAULT_CHARSET
              Font.Color = 4934475
              Font.Height = -13
              Font.Name = 'Segoe UI'
              Font.Style = []
              ItemIndex = 2
              ParentFont = False
              TabOrder = 0
              Text = 'Terceirizado'
              Items.Strings = (
                'Pr'#243'prio'
                'Agregado'
                'Terceirizado')
            end
            object Edt_HabilitacaoNumeroCNH: TEdit
              AlignWithMargins = True
              Left = 6
              Top = 113
              Width = 156
              Height = 25
              Margins.Top = 5
              Margins.Bottom = 5
              Font.Charset = DEFAULT_CHARSET
              Font.Color = 4934475
              Font.Height = -13
              Font.Name = 'Segoe UI'
              Font.Style = []
              NumbersOnly = True
              ParentFont = False
              TabOrder = 1
            end
            object CmBx_HabilitacaoCategoria: TComboBox
              AlignWithMargins = True
              Left = 6
              Top = 243
              Width = 156
              Height = 25
              Margins.Top = 5
              Margins.Bottom = 5
              Font.Charset = DEFAULT_CHARSET
              Font.Color = 4934475
              Font.Height = -13
              Font.Name = 'Segoe UI'
              Font.Style = []
              ParentFont = False
              TabOrder = 2
              Text = 'C'
              Items.Strings = (
                'A'
                'B'
                'C'
                'D'
                'E')
            end
            object MsEdt_HabilitacaoValidadeExamMedico: TMaskEdit
              AlignWithMargins = True
              Left = 196
              Top = 94
              Width = 127
              Height = 25
              Margins.Top = 5
              Margins.Bottom = 5
              EditMask = '!99/99/00;1;_'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = 4934475
              Font.Height = -13
              Font.Name = 'Segoe UI'
              Font.Style = []
              MaxLength = 8
              ParentFont = False
              TabOrder = 3
              Text = '00/00/00'
            end
            object MsEdt_HabilitacaoValidadeCNH: TMaskEdit
              AlignWithMargins = True
              Left = 6
              Top = 178
              Width = 128
              Height = 25
              Margins.Top = 5
              Margins.Bottom = 5
              EditMask = '!99/99/00;1;_'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = 4934475
              Font.Height = -13
              Font.Name = 'Segoe UI'
              Font.Style = []
              MaxLength = 8
              ParentFont = False
              TabOrder = 4
              Text = '00/00/00'
            end
          end
        end
      end
      object TbSh_NovoVeiculo: TTabSheet
        Caption = 'Novo Veiculo'
        ImageIndex = 1
        object Grbx_VeiculoMotorista: TGroupBox
          Left = 28
          Top = 10
          Width = 369
          Height = 275
          Cursor = crDrag
          Caption = 'Ve'#237'culo'
          Color = clWhite
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'Segoe UI'
          Font.Style = [fsBold]
          ParentBackground = False
          ParentColor = False
          ParentFont = False
          TabOrder = 0
          object Pnl_VeiculoMotorista: TPanel
            Left = 20
            Top = 31
            Width = 346
            Height = 229
            BevelOuter = bvNone
            TabOrder = 0
            object Lbl_VeiculoMotoristaPlaca: TLabel
              Left = 14
              Top = 16
              Width = 38
              Height = 20
              Margins.Top = 5
              Margins.Bottom = 5
              Caption = 'Placa:'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -15
              Font.Name = 'Segoe UI'
              Font.Style = []
              ParentFont = False
            end
            object Lbl_VeiculoMotoristaPlacaUF: TLabel
              Left = 14
              Top = 81
              Width = 59
              Height = 20
              Margins.Top = 5
              Margins.Bottom = 5
              Caption = 'Placa UF:'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -15
              Font.Name = 'Segoe UI'
              Font.Style = []
              ParentFont = False
            end
            object Lbl_VeiculoMotoristaTipoVeiculo: TLabel
              Left = 167
              Top = 81
              Width = 106
              Height = 20
              Margins.Top = 5
              Margins.Bottom = 5
              Caption = 'Tipo de Veiculo:'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -15
              Font.Name = 'Segoe UI'
              Font.Style = []
              ParentFont = False
            end
            object Lbl_VeiculoMotoristaMotoristaAssociado: TLabel
              Left = 167
              Top = 16
              Width = 82
              Height = 20
              Margins.Top = 5
              Margins.Bottom = 5
              Caption = 'Propriet'#225'rio:'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -15
              Font.Name = 'Segoe UI'
              Font.Style = []
              ParentFont = False
            end
            object Label14: TLabel
              Left = 14
              Top = 146
              Width = 49
              Height = 20
              Margins.Top = 5
              Margins.Bottom = 5
              Caption = 'RNTRC:'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -15
              Font.Name = 'Segoe UI'
              Font.Style = []
              ParentFont = False
            end
            object Lbl_ReqVeiculoPlaca: TLabel
              Left = 58
              Top = 16
              Width = 7
              Height = 20
              Margins.Top = 5
              Margins.Bottom = 5
              Caption = '*'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clRed
              Font.Height = -15
              Font.Name = 'Segoe UI'
              Font.Style = [fsBold]
              ParentFont = False
            end
            object Lbl_ReqVeiculoPlacaUF: TLabel
              Left = 79
              Top = 81
              Width = 7
              Height = 20
              Margins.Top = 5
              Margins.Bottom = 5
              Caption = '*'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clRed
              Font.Height = -15
              Font.Name = 'Segoe UI'
              Font.Style = [fsBold]
              ParentFont = False
            end
            object Lbl_ReqVeiculoRNTRC: TLabel
              Left = 69
              Top = 146
              Width = 7
              Height = 20
              Margins.Top = 5
              Margins.Bottom = 5
              Caption = '*'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clRed
              Font.Height = -15
              Font.Name = 'Segoe UI'
              Font.Style = [fsBold]
              ParentFont = False
            end
            object Lbl_ReqVeiculoProprietario: TLabel
              Left = 255
              Top = 16
              Width = 7
              Height = 20
              Margins.Top = 5
              Margins.Bottom = 5
              Caption = '*'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clRed
              Font.Height = -15
              Font.Name = 'Segoe UI'
              Font.Style = [fsBold]
              ParentFont = False
            end
            object Lbl_ReqVeiculoTipoVeiculo: TLabel
              Left = 279
              Top = 81
              Width = 7
              Height = 20
              Margins.Top = 5
              Margins.Bottom = 5
              Caption = '*'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clRed
              Font.Height = -15
              Font.Name = 'Segoe UI'
              Font.Style = [fsBold]
              ParentFont = False
            end
            object Edt_VeiculoMotoristaPlaca: TEdit
              Left = 13
              Top = 46
              Width = 107
              Height = 25
              Margins.Top = 5
              Margins.Bottom = 5
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
              Left = 167
              Top = 111
              Width = 134
              Height = 25
              Margins.Top = 5
              Margins.Bottom = 5
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -13
              Font.Name = 'Segoe UI'
              Font.Style = []
              NumbersOnly = True
              ParentFont = False
              TabOrder = 1
            end
            object Cmbx_VeiculoMotoristaPlacaUF: TComboBox
              Left = 14
              Top = 111
              Width = 69
              Height = 25
              Margins.Top = 5
              Margins.Bottom = 5
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -13
              Font.Name = 'Segoe UI'
              Font.Style = []
              ItemIndex = 7
              ParentFont = False
              TabOrder = 2
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
              Left = 167
              Top = 46
              Width = 134
              Height = 25
              Margins.Top = 5
              Margins.Bottom = 5
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -13
              Font.Name = 'Segoe UI'
              Font.Style = []
              ItemIndex = 2
              ParentFont = False
              TabOrder = 3
              Text = 'Terceirizado'
              Items.Strings = (
                'Pr'#243'prio'
                'Agregado'
                'Terceirizado')
            end
            object Edt_VeiculoRNTRC: TEdit
              Left = 14
              Top = 176
              Width = 69
              Height = 25
              Margins.Top = 5
              Margins.Bottom = 5
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -13
              Font.Name = 'Segoe UI'
              Font.Style = []
              NumbersOnly = True
              ParentFont = False
              TabOrder = 4
            end
          end
        end
        object Panel2: TPanel
          Left = 0
          Top = 409
          Width = 777
          Height = 55
          Align = alBottom
          BevelOuter = bvNone
          BorderWidth = 10
          Color = clWhite
          ParentBackground = False
          TabOrder = 1
          object Panel3: TPanel
            AlignWithMargins = True
            Left = 615
            Top = 10
            Width = 150
            Height = 35
            Margins.Left = 2
            Margins.Top = 0
            Margins.Right = 2
            Margins.Bottom = 0
            Align = alRight
            BevelOuter = bvNone
            TabOrder = 0
            object Shape1: TShape
              Left = 0
              Top = 0
              Width = 150
              Height = 35
              Align = alClient
              Brush.Color = 4227072
              Pen.Color = clGreen
              Shape = stRoundRect
              ExplicitLeft = 312
              ExplicitTop = 16
              ExplicitWidth = 65
              ExplicitHeight = 65
            end
            object SpeedButton1: TSpeedButton
              Left = 0
              Top = 0
              Width = 150
              Height = 35
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
              ExplicitLeft = -6
              ExplicitHeight = 36
            end
          end
          object Panel4: TPanel
            AlignWithMargins = True
            Left = 461
            Top = 10
            Width = 150
            Height = 35
            Margins.Left = 2
            Margins.Top = 0
            Margins.Right = 2
            Margins.Bottom = 0
            Align = alRight
            BevelOuter = bvNone
            TabOrder = 1
            object Shape2: TShape
              Left = 0
              Top = 0
              Width = 150
              Height = 35
              Align = alClient
              Brush.Color = 10197915
              Pen.Color = clGray
              Shape = stRoundRect
              ExplicitLeft = 312
              ExplicitTop = 16
              ExplicitWidth = 65
              ExplicitHeight = 65
            end
            object SpeedButton2: TSpeedButton
              Left = 0
              Top = 0
              Width = 150
              Height = 35
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
              OnClick = Btn_CancelarNovoMotoristaClick
              ExplicitLeft = 22
              ExplicitWidth = 178
              ExplicitHeight = 48
            end
          end
        end
        object GroupBox2: TGroupBox
          Left = 403
          Top = 10
          Width = 344
          Height = 275
          Cursor = crDrag
          Caption = 'Especifica'#231#245'es'
          Color = clWhite
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'Segoe UI'
          Font.Style = [fsBold]
          ParentBackground = False
          ParentColor = False
          ParentFont = False
          TabOrder = 2
          object Pnl_Especificacoes: TPanel
            Left = 7
            Top = 28
            Width = 330
            Height = 229
            BevelOuter = bvNone
            TabOrder = 0
            object Lbl_EspecificacoesCapacidadeKg: TLabel
              Left = 176
              Top = 81
              Width = 108
              Height = 20
              Margins.Top = 5
              Margins.Bottom = 5
              Caption = 'Capacidade KG: '
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -15
              Font.Name = 'Segoe UI'
              Font.Style = []
              ParentFont = False
            end
            object Lbl_EspecificacoesMarca: TLabel
              Left = 16
              Top = 81
              Width = 44
              Height = 20
              Margins.Top = 5
              Margins.Bottom = 5
              Caption = 'Marca:'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -15
              Font.Name = 'Segoe UI'
              Font.Style = []
              ParentFont = False
            end
            object Lbl_EspecificacoesModelo: TLabel
              Left = 16
              Top = 146
              Width = 55
              Height = 20
              Margins.Top = 5
              Margins.Bottom = 5
              Caption = 'Modelo:'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -15
              Font.Name = 'Segoe UI'
              Font.Style = []
              ParentFont = False
            end
            object Lbl_EspecificacoesCor: TLabel
              Left = 176
              Top = 16
              Width = 26
              Height = 20
              Margins.Top = 5
              Margins.Bottom = 5
              Caption = 'Cor:'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -15
              Font.Name = 'Segoe UI'
              Font.Style = []
              ParentFont = False
            end
            object Lbl_EspecificacoesTipoVeiculo: TLabel
              Left = 16
              Top = 16
              Width = 106
              Height = 20
              Margins.Top = 5
              Margins.Bottom = 5
              Caption = 'Tipo de Veiculo:'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -15
              Font.Name = 'Segoe UI'
              Font.Style = []
              ParentFont = False
            end
            object Lbl_ReqEspecificacoesTipoVeiculo: TLabel
              Left = 128
              Top = 16
              Width = 7
              Height = 20
              Margins.Top = 5
              Margins.Bottom = 5
              Caption = '*'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clRed
              Font.Height = -15
              Font.Name = 'Segoe UI'
              Font.Style = [fsBold]
              ParentFont = False
            end
            object Lbl_ReqEspecificacoesCapacidade: TLabel
              Left = 290
              Top = 81
              Width = 7
              Height = 20
              Margins.Top = 5
              Margins.Bottom = 5
              Caption = '*'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clRed
              Font.Height = -15
              Font.Name = 'Segoe UI'
              Font.Style = [fsBold]
              ParentFont = False
            end
            object Edt_VeiculoMotoristaCapacidade: TEdit
              Left = 176
              Top = 111
              Width = 129
              Height = 25
              Margins.Top = 5
              Margins.Bottom = 5
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -13
              Font.Name = 'Segoe UI'
              Font.Style = []
              NumbersOnly = True
              ParentFont = False
              TabOrder = 0
            end
            object Edt_EspecificacoesMarca: TEdit
              Left = 16
              Top = 111
              Width = 106
              Height = 25
              Margins.Top = 5
              Margins.Bottom = 5
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -13
              Font.Name = 'Segoe UI'
              Font.Style = []
              NumbersOnly = True
              ParentFont = False
              TabOrder = 1
            end
            object Edt_EspecificacoesModelo: TEdit
              Left = 16
              Top = 176
              Width = 106
              Height = 25
              Margins.Top = 5
              Margins.Bottom = 5
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -13
              Font.Name = 'Segoe UI'
              Font.Style = []
              NumbersOnly = True
              ParentFont = False
              TabOrder = 2
            end
            object Edt_EspecificacoesCor: TEdit
              Left = 176
              Top = 46
              Width = 97
              Height = 25
              Margins.Top = 5
              Margins.Bottom = 5
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -13
              Font.Name = 'Segoe UI'
              Font.Style = []
              NumbersOnly = True
              ParentFont = False
              TabOrder = 3
            end
            object Edt_EspecificacoesTipoVeiculo: TEdit
              Left = 16
              Top = 46
              Width = 106
              Height = 25
              Margins.Top = 5
              Margins.Bottom = 5
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -13
              Font.Name = 'Segoe UI'
              Font.Style = []
              NumbersOnly = True
              ParentFont = False
              TabOrder = 4
            end
          end
        end
        object GrBx_ControleOp: TGroupBox
          Left = 28
          Top = 291
          Width = 719
          Height = 108
          Cursor = crDrag
          Caption = 'Controle Operacional'
          Color = clWhite
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'Segoe UI'
          Font.Style = [fsBold]
          ParentBackground = False
          ParentColor = False
          ParentFont = False
          TabOrder = 3
          object Pnl_ControleOp: TPanel
            Left = 18
            Top = 25
            Width = 679
            Height = 73
            BevelOuter = bvNone
            TabOrder = 0
            object Lbl_ControleOpStatus: TLabel
              AlignWithMargins = True
              Left = 383
              Top = 41
              Width = 47
              Height = 20
              Margins.Left = 5
              Margins.Top = 5
              Margins.Right = 5
              Margins.Bottom = 5
              Caption = 'Status: '
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -15
              Font.Name = 'Segoe UI'
              Font.Style = []
              ParentFont = False
            end
            object Lbl_ControleOpPossuiRastreador: TLabel
              AlignWithMargins = True
              Left = 11
              Top = 41
              Width = 123
              Height = 20
              Margins.Left = 5
              Margins.Top = 5
              Margins.Right = 5
              Margins.Bottom = 5
              Caption = 'Possui Rastreador?'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -15
              Font.Name = 'Segoe UI'
              Font.Style = []
              ParentFont = False
            end
            object Lbl_ControleOpKmAtual: TLabel
              AlignWithMargins = True
              Left = 11
              Top = 11
              Width = 64
              Height = 20
              Margins.Left = 5
              Margins.Top = 5
              Margins.Right = 5
              Margins.Bottom = 5
              Caption = 'Km Atual:'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -15
              Font.Name = 'Segoe UI'
              Font.Style = []
              ParentFont = False
            end
            object Lbl_ControleOpNEquipamento: TLabel
              AlignWithMargins = True
              Left = 380
              Top = 11
              Width = 117
              Height = 20
              Margins.Left = 5
              Margins.Top = 5
              Margins.Right = 5
              Margins.Bottom = 5
              Caption = 'N'#176' Equipamento: '
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -15
              Font.Name = 'Segoe UI'
              Font.Style = []
              ParentFont = False
            end
            object Lbl_ReqControleOpStatus: TLabel
              Left = 438
              Top = 41
              Width = 7
              Height = 20
              Margins.Top = 5
              Margins.Bottom = 5
              Caption = '*'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clRed
              Font.Height = -15
              Font.Name = 'Segoe UI'
              Font.Style = [fsBold]
              ParentFont = False
            end
            object RaBt_ControleOpSim: TRadioButton
              AlignWithMargins = True
              Left = 144
              Top = 44
              Width = 62
              Height = 17
              Margins.Left = 5
              Margins.Top = 5
              Margins.Right = 5
              Margins.Bottom = 5
              Caption = 'Sim'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -13
              Font.Name = 'Segoe UI'
              Font.Style = []
              ParentFont = False
              TabOrder = 0
            end
            object RaBt_ControleOpNao: TRadioButton
              AlignWithMargins = True
              Left = 216
              Top = 44
              Width = 66
              Height = 17
              Margins.Left = 5
              Margins.Top = 5
              Margins.Right = 5
              Margins.Bottom = 5
              Caption = 'N'#227'o'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -13
              Font.Name = 'Segoe UI'
              Font.Style = []
              ParentFont = False
              TabOrder = 1
            end
            object ChBx_ControleOpAtivo: TCheckBox
              AlignWithMargins = True
              Left = 456
              Top = 44
              Width = 62
              Height = 17
              Margins.Left = 5
              Margins.Top = 5
              Margins.Right = 5
              Margins.Bottom = 5
              Caption = 'Ativo'
              Checked = True
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -13
              Font.Name = 'Segoe UI'
              Font.Style = []
              ParentFont = False
              State = cbChecked
              TabOrder = 2
            end
            object Edt_ControleOpKmAtual: TEdit
              AlignWithMargins = True
              Left = 85
              Top = 9
              Width = 91
              Height = 25
              Margins.Left = 5
              Margins.Top = 5
              Margins.Right = 5
              Margins.Bottom = 5
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -13
              Font.Name = 'Segoe UI'
              Font.Style = []
              NumbersOnly = True
              ParentFont = False
              TabOrder = 3
            end
            object Edt_ControleOpNEquipamentos: TEdit
              AlignWithMargins = True
              Left = 507
              Top = 9
              Width = 154
              Height = 25
              Margins.Left = 5
              Margins.Top = 5
              Margins.Right = 5
              Margins.Bottom = 5
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -13
              Font.Name = 'Segoe UI'
              Font.Style = []
              NumbersOnly = True
              ParentFont = False
              TabOrder = 4
            end
          end
        end
      end
    end
  end
end
