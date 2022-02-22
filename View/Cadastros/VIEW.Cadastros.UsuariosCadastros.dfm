object View_UsuariosCadastros: TView_UsuariosCadastros
  Left = 0
  Top = 0
  Caption = 'Cadastros > Usuarios > Dados do Usu'#225'rio'
  ClientHeight = 211
  ClientWidth = 749
  Color = 5657424
  Constraints.MaxHeight = 250
  Constraints.MaxWidth = 1024
  Constraints.MinHeight = 250
  Constraints.MinWidth = 600
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clGreen
  Font.Height = -15
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  OnActivate = FormActivate
  OnCreate = FormCreate
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 18
  object Pa_DadosUsuario: TPanel
    Left = 14
    Top = 61
    Width = 721
    Height = 88
    Align = alCustom
    Anchors = [akLeft, akTop, akRight, akBottom]
    BevelOuter = bvNone
    Caption = 'Pa_DadosUsuario'
    Color = 4209204
    ParentBackground = False
    ShowCaption = False
    TabOrder = 0
    DesignSize = (
      721
      88)
    object Label1: TLabel
      Left = 10
      Top = 15
      Width = 46
      Height = 18
      Caption = 'NOME:'
    end
    object Label2: TLabel
      Left = 10
      Top = 52
      Width = 50
      Height = 18
      Caption = 'SENHA:'
    end
    object Edt_Nome_Usuario: TEdit
      Left = 70
      Top = 9
      Width = 641
      Height = 26
      Anchors = [akLeft, akTop, akRight]
      BevelEdges = [beBottom]
      BevelKind = bkSoft
      BevelOuter = bvNone
      BorderStyle = bsNone
      CharCase = ecUpperCase
      MaxLength = 75
      ParentColor = True
      TabOrder = 0
      Text = 'NOME'
    end
    object Medt_Senha: TMaskEdit
      Left = 70
      Top = 49
      Width = 198
      Height = 26
      BevelEdges = [beBottom]
      BevelOuter = bvNone
      BevelKind = bkSoft
      BorderStyle = bsNone
      CharCase = ecUpperCase
      MaxLength = 15
      ParentColor = True
      PasswordChar = '-'
      TabOrder = 1
      Text = 'MEDT_SENHA'
    end
  end
end
