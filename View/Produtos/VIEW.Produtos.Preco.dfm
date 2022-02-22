object View_ProdutosPreco: TView_ProdutosPreco
  Left = 0
  Top = 64
  Caption = 'Cadastros > Produtos e Estoque > Pre'#231'o'
  ClientHeight = 541
  ClientWidth = 894
  Color = 5657424
  Constraints.MaxHeight = 620
  Constraints.MaxWidth = 1300
  Constraints.MinHeight = 580
  Constraints.MinWidth = 910
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clGreen
  Font.Height = -15
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesigned
  OnActivate = FormActivate
  OnCreate = FormCreate
  OnDestroy = FormDestroy
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 18
  object Pa_DadosPrecos: TPanel
    Left = 14
    Top = 61
    Width = 866
    Height = 411
    Margins.Left = 9
    Align = alCustom
    Anchors = [akLeft, akTop, akRight, akBottom]
    BevelOuter = bvNone
    BorderWidth = 6
    Color = 4209204
    Locked = True
    ParentBackground = False
    ShowCaption = False
    TabOrder = 0
    object Pa_Precos: TPanel
      Left = 6
      Top = 125
      Width = 854
      Height = 286
      Align = alTop
      BevelOuter = bvNone
      BorderWidth = 3
      ParentColor = True
      TabOrder = 0
      object Grp_Precos1: TGridPanel
        Left = 3
        Top = 3
        Width = 848
        Height = 56
        Align = alTop
        BevelOuter = bvNone
        BorderWidth = 2
        ColumnCollection = <
          item
            Value = 11.561739757873860000
          end
          item
            Value = 3.401742083276205000
          end
          item
            Value = 11.561739757873860000
          end
          item
            Value = 3.401742083276205000
          end
          item
            Value = 11.584568886805850000
          end
          item
            Value = 3.381491408594314000
          end
          item
            Value = 11.240625449129190000
          end
          item
            Value = 3.381491408594314000
          end
          item
            Value = 11.240625449129190000
          end
          item
            Value = 3.381491408594314000
          end
          item
            Value = 11.240625449129190000
          end
          item
            Value = 3.381491408594314000
          end
          item
            Value = 11.240625449129190000
          end>
        ControlCollection = <
          item
            Column = 1
            Control = Label7
            Row = 0
          end
          item
            Column = 1
            Control = Label14
            Row = 1
          end
          item
            Column = 0
            Control = Label10
            Row = 0
          end
          item
            Column = 2
            Control = Label2
            Row = 0
          end
          item
            Column = 3
            Control = Label4
            Row = 0
          end
          item
            Column = 4
            Control = Label5
            Row = 0
          end
          item
            Column = 3
            Control = Label6
            Row = 1
          end
          item
            Column = 5
            Control = Label8
            Row = 0
          end
          item
            Column = 6
            Control = Label9
            Row = 0
          end
          item
            Column = 5
            Control = Label11
            Row = 1
          end
          item
            Column = 7
            Control = Label12
            Row = 0
          end
          item
            Column = 8
            Control = Label13
            Row = 0
          end
          item
            Column = 9
            Control = Label15
            Row = 0
          end
          item
            Column = 10
            Control = Label16
            Row = 0
          end
          item
            Column = 11
            Control = Label17
            Row = 0
          end
          item
            Column = 12
            Control = Label18
            Row = 0
          end
          item
            Column = 7
            Control = Label21
            Row = 1
          end
          item
            Column = 9
            Control = Label22
            Row = 1
          end
          item
            Column = 11
            Control = Label23
            Row = 1
          end
          item
            Column = 0
            Control = Ed_PRECO01
            Row = 1
          end
          item
            Column = 2
            Control = Ed_PRECO02
            Row = 1
          end
          item
            Column = 4
            Control = Ed_PRECO03
            Row = 1
          end
          item
            Column = 6
            Control = Ed_PRECO04
            Row = 1
          end
          item
            Column = 8
            Control = Ed_PRECO05
            Row = 1
          end
          item
            Column = 10
            Control = Ed_PRECO06
            Row = 1
          end
          item
            Column = 12
            Control = Ed_PRECO07
            Row = 1
          end>
        ParentColor = True
        RowCollection = <
          item
            Value = 48.000000000000000000
          end
          item
            Value = 52.000000000000000000
          end
          item
            SizeStyle = ssAuto
          end>
        TabOrder = 0
        object Label7: TLabel
          Left = 99
          Top = 2
          Width = 28
          Height = 24
          Align = alClient
          Layout = tlCenter
          ExplicitWidth = 5
          ExplicitHeight = 18
        end
        object Label14: TLabel
          Left = 99
          Top = 26
          Width = 28
          Height = 27
          Align = alClient
          Layout = tlCenter
          ExplicitWidth = 5
          ExplicitHeight = 18
        end
        object Label10: TLabel
          Left = 2
          Top = 2
          Width = 97
          Height = 24
          Align = alClient
          Alignment = taCenter
          Caption = 'Pre'#231'o 01'
          Layout = tlCenter
          ExplicitWidth = 57
          ExplicitHeight = 18
        end
        object Label2: TLabel
          Left = 127
          Top = 2
          Width = 97
          Height = 24
          Align = alClient
          Alignment = taCenter
          Caption = 'Pre'#231'o 02'
          Layout = tlCenter
          ExplicitWidth = 57
          ExplicitHeight = 18
        end
        object Label4: TLabel
          Left = 224
          Top = 2
          Width = 28
          Height = 24
          Align = alClient
          Layout = tlCenter
          ExplicitWidth = 5
          ExplicitHeight = 18
        end
        object Label5: TLabel
          Left = 252
          Top = 2
          Width = 97
          Height = 24
          Align = alClient
          Alignment = taCenter
          Caption = 'Pre'#231'o 03'
          Layout = tlCenter
          ExplicitWidth = 57
          ExplicitHeight = 18
        end
        object Label6: TLabel
          Left = 224
          Top = 26
          Width = 28
          Height = 27
          Align = alClient
          Layout = tlCenter
          ExplicitWidth = 5
          ExplicitHeight = 18
        end
        object Label8: TLabel
          Left = 349
          Top = 2
          Width = 28
          Height = 24
          Align = alClient
          Layout = tlCenter
          ExplicitWidth = 5
          ExplicitHeight = 18
        end
        object Label9: TLabel
          Left = 377
          Top = 2
          Width = 94
          Height = 24
          Align = alClient
          Alignment = taCenter
          Caption = 'Pre'#231'o 04'
          Layout = tlCenter
          ExplicitWidth = 57
          ExplicitHeight = 18
        end
        object Label11: TLabel
          Left = 349
          Top = 26
          Width = 28
          Height = 27
          Align = alClient
          Layout = tlCenter
          ExplicitWidth = 5
          ExplicitHeight = 18
        end
        object Label12: TLabel
          Left = 471
          Top = 2
          Width = 28
          Height = 24
          Align = alClient
          Layout = tlCenter
          ExplicitWidth = 5
          ExplicitHeight = 18
        end
        object Label13: TLabel
          Left = 499
          Top = 2
          Width = 94
          Height = 24
          Align = alClient
          Alignment = taCenter
          Caption = 'Pre'#231'o 05'
          Layout = tlCenter
          ExplicitWidth = 57
          ExplicitHeight = 18
        end
        object Label15: TLabel
          Left = 593
          Top = 2
          Width = 28
          Height = 24
          Align = alClient
          Layout = tlCenter
          ExplicitWidth = 5
          ExplicitHeight = 18
        end
        object Label16: TLabel
          Left = 621
          Top = 2
          Width = 94
          Height = 24
          Align = alClient
          Alignment = taCenter
          Caption = 'Pre'#231'o 06'
          Layout = tlCenter
          ExplicitWidth = 57
          ExplicitHeight = 18
        end
        object Label17: TLabel
          Left = 715
          Top = 2
          Width = 28
          Height = 24
          Align = alClient
          Layout = tlCenter
          ExplicitWidth = 5
          ExplicitHeight = 18
        end
        object Label18: TLabel
          Left = 743
          Top = 2
          Width = 103
          Height = 24
          Align = alClient
          Alignment = taCenter
          Caption = 'Pre'#231'o 07'
          Layout = tlCenter
          ExplicitWidth = 57
          ExplicitHeight = 18
        end
        object Label21: TLabel
          Left = 471
          Top = 26
          Width = 28
          Height = 27
          Align = alClient
          Layout = tlCenter
          ExplicitWidth = 5
          ExplicitHeight = 18
        end
        object Label22: TLabel
          Left = 593
          Top = 26
          Width = 28
          Height = 27
          Align = alClient
          Layout = tlCenter
          ExplicitWidth = 5
          ExplicitHeight = 18
        end
        object Label23: TLabel
          Left = 715
          Top = 26
          Width = 28
          Height = 27
          Align = alClient
          Layout = tlCenter
          ExplicitWidth = 5
          ExplicitHeight = 18
        end
        object Ed_PRECO01: TEdit
          Left = 2
          Top = 26
          Width = 97
          Height = 27
          Align = alClient
          Alignment = taCenter
          BevelEdges = [beLeft, beRight, beBottom]
          BevelKind = bkSoft
          BevelOuter = bvNone
          BorderStyle = bsNone
          CharCase = ecUpperCase
          Ctl3D = False
          MaxLength = 15
          ParentColor = True
          ParentCtl3D = False
          TabOrder = 0
          Text = '123456,789'
        end
        object Ed_PRECO02: TEdit
          Left = 127
          Top = 26
          Width = 97
          Height = 27
          Align = alClient
          Alignment = taCenter
          BevelEdges = [beLeft, beRight, beBottom]
          BevelKind = bkSoft
          BevelOuter = bvNone
          BorderStyle = bsNone
          CharCase = ecUpperCase
          Ctl3D = False
          MaxLength = 15
          ParentColor = True
          ParentCtl3D = False
          TabOrder = 1
          Text = '123456,789'
        end
        object Ed_PRECO03: TEdit
          Left = 252
          Top = 26
          Width = 97
          Height = 27
          Align = alClient
          Alignment = taCenter
          BevelEdges = [beLeft, beRight, beBottom]
          BevelKind = bkSoft
          BevelOuter = bvNone
          BorderStyle = bsNone
          CharCase = ecUpperCase
          Ctl3D = False
          MaxLength = 15
          ParentColor = True
          ParentCtl3D = False
          TabOrder = 2
          Text = '123456,789'
        end
        object Ed_PRECO04: TEdit
          Left = 377
          Top = 26
          Width = 94
          Height = 27
          Align = alClient
          Alignment = taCenter
          BevelEdges = [beLeft, beRight, beBottom]
          BevelKind = bkSoft
          BevelOuter = bvNone
          BorderStyle = bsNone
          CharCase = ecUpperCase
          Ctl3D = False
          MaxLength = 15
          ParentColor = True
          ParentCtl3D = False
          TabOrder = 3
          Text = '123456,789'
        end
        object Ed_PRECO05: TEdit
          Left = 499
          Top = 26
          Width = 94
          Height = 27
          Align = alClient
          Alignment = taCenter
          BevelEdges = [beLeft, beRight, beBottom]
          BevelKind = bkSoft
          BevelOuter = bvNone
          BorderStyle = bsNone
          CharCase = ecUpperCase
          Ctl3D = False
          MaxLength = 15
          ParentColor = True
          ParentCtl3D = False
          TabOrder = 4
          Text = '123456,789'
        end
        object Ed_PRECO06: TEdit
          Left = 621
          Top = 26
          Width = 94
          Height = 27
          Align = alClient
          Alignment = taCenter
          BevelEdges = [beLeft, beRight, beBottom]
          BevelKind = bkSoft
          BevelOuter = bvNone
          BorderStyle = bsNone
          CharCase = ecUpperCase
          Ctl3D = False
          MaxLength = 15
          ParentColor = True
          ParentCtl3D = False
          TabOrder = 5
          Text = '123456,789'
        end
        object Ed_PRECO07: TEdit
          Left = 743
          Top = 26
          Width = 103
          Height = 27
          Align = alClient
          Alignment = taCenter
          BevelEdges = [beLeft, beRight, beBottom]
          BevelKind = bkSoft
          BevelOuter = bvNone
          BorderStyle = bsNone
          CharCase = ecUpperCase
          Ctl3D = False
          MaxLength = 15
          ParentColor = True
          ParentCtl3D = False
          TabOrder = 6
          Text = '123456,789'
        end
      end
      object Grp_Precos2: TGridPanel
        Left = 3
        Top = 59
        Width = 848
        Height = 56
        Align = alTop
        BevelOuter = bvNone
        BorderWidth = 2
        ColumnCollection = <
          item
            Value = 11.561739757873860000
          end
          item
            Value = 3.401742083276205000
          end
          item
            Value = 11.561739757873860000
          end
          item
            Value = 3.401742083276205000
          end
          item
            Value = 11.584568886805850000
          end
          item
            Value = 3.381491408594314000
          end
          item
            Value = 11.240625449129190000
          end
          item
            Value = 3.381491408594314000
          end
          item
            Value = 11.240625449129190000
          end
          item
            Value = 3.381491408594314000
          end
          item
            Value = 11.240625449129190000
          end
          item
            Value = 3.381491408594314000
          end
          item
            Value = 11.240625449129190000
          end>
        ControlCollection = <
          item
            Column = 1
            Control = Label19
            Row = 0
          end
          item
            Column = 1
            Control = Label20
            Row = 1
          end
          item
            Column = 0
            Control = Label24
            Row = 0
          end
          item
            Column = 2
            Control = Label25
            Row = 0
          end
          item
            Column = 3
            Control = Label26
            Row = 0
          end
          item
            Column = 4
            Control = Label27
            Row = 0
          end
          item
            Column = 3
            Control = Label28
            Row = 1
          end
          item
            Column = 5
            Control = Label29
            Row = 0
          end
          item
            Column = 6
            Control = Label30
            Row = 0
          end
          item
            Column = 5
            Control = Label31
            Row = 1
          end
          item
            Column = 7
            Control = Label32
            Row = 0
          end
          item
            Column = 8
            Control = Label33
            Row = 0
          end
          item
            Column = 9
            Control = Label34
            Row = 0
          end
          item
            Column = 10
            Control = Label35
            Row = 0
          end
          item
            Column = 11
            Control = Label36
            Row = 0
          end
          item
            Column = 12
            Control = Label37
            Row = 0
          end
          item
            Column = 7
            Control = Label38
            Row = 1
          end
          item
            Column = 9
            Control = Label39
            Row = 1
          end
          item
            Column = 11
            Control = Label40
            Row = 1
          end
          item
            Column = 0
            Control = Ed_PRECO08
            Row = 1
          end
          item
            Column = 2
            Control = Ed_PRECO09
            Row = 1
          end
          item
            Column = 4
            Control = Ed_PRECO10
            Row = 1
          end
          item
            Column = 6
            Control = Ed_PRECO11
            Row = 1
          end
          item
            Column = 8
            Control = Ed_PRECO12
            Row = 1
          end
          item
            Column = 10
            Control = Ed_PRECO13
            Row = 1
          end
          item
            Column = 12
            Control = Ed_PRECO14
            Row = 1
          end>
        ParentColor = True
        RowCollection = <
          item
            Value = 48.000000000000000000
          end
          item
            Value = 52.000000000000000000
          end
          item
            SizeStyle = ssAuto
          end>
        TabOrder = 1
        object Label19: TLabel
          Left = 99
          Top = 2
          Width = 28
          Height = 24
          Align = alClient
          Layout = tlCenter
          ExplicitWidth = 5
          ExplicitHeight = 18
        end
        object Label20: TLabel
          Left = 99
          Top = 26
          Width = 28
          Height = 27
          Align = alClient
          Layout = tlCenter
          ExplicitWidth = 5
          ExplicitHeight = 18
        end
        object Label24: TLabel
          Left = 2
          Top = 2
          Width = 97
          Height = 24
          Align = alClient
          Alignment = taCenter
          Caption = 'Pre'#231'o 08'
          Layout = tlCenter
          ExplicitWidth = 57
          ExplicitHeight = 18
        end
        object Label25: TLabel
          Left = 127
          Top = 2
          Width = 97
          Height = 24
          Align = alClient
          Alignment = taCenter
          Caption = 'Pre'#231'o 09'
          Layout = tlCenter
          ExplicitWidth = 57
          ExplicitHeight = 18
        end
        object Label26: TLabel
          Left = 224
          Top = 2
          Width = 28
          Height = 24
          Align = alClient
          Layout = tlCenter
          ExplicitWidth = 5
          ExplicitHeight = 18
        end
        object Label27: TLabel
          Left = 252
          Top = 2
          Width = 97
          Height = 24
          Align = alClient
          Alignment = taCenter
          Caption = 'Pre'#231'o 10'
          Layout = tlCenter
          ExplicitWidth = 57
          ExplicitHeight = 18
        end
        object Label28: TLabel
          Left = 224
          Top = 26
          Width = 28
          Height = 27
          Align = alClient
          Layout = tlCenter
          ExplicitWidth = 5
          ExplicitHeight = 18
        end
        object Label29: TLabel
          Left = 349
          Top = 2
          Width = 28
          Height = 24
          Align = alClient
          Layout = tlCenter
          ExplicitWidth = 5
          ExplicitHeight = 18
        end
        object Label30: TLabel
          Left = 377
          Top = 2
          Width = 94
          Height = 24
          Align = alClient
          Alignment = taCenter
          Caption = 'Pre'#231'o 11'
          Layout = tlCenter
          ExplicitWidth = 57
          ExplicitHeight = 18
        end
        object Label31: TLabel
          Left = 349
          Top = 26
          Width = 28
          Height = 27
          Align = alClient
          Layout = tlCenter
          ExplicitWidth = 5
          ExplicitHeight = 18
        end
        object Label32: TLabel
          Left = 471
          Top = 2
          Width = 28
          Height = 24
          Align = alClient
          Layout = tlCenter
          ExplicitWidth = 5
          ExplicitHeight = 18
        end
        object Label33: TLabel
          Left = 499
          Top = 2
          Width = 94
          Height = 24
          Align = alClient
          Alignment = taCenter
          Caption = 'Pre'#231'o 12'
          Layout = tlCenter
          ExplicitWidth = 57
          ExplicitHeight = 18
        end
        object Label34: TLabel
          Left = 593
          Top = 2
          Width = 28
          Height = 24
          Align = alClient
          Layout = tlCenter
          ExplicitWidth = 5
          ExplicitHeight = 18
        end
        object Label35: TLabel
          Left = 621
          Top = 2
          Width = 94
          Height = 24
          Align = alClient
          Alignment = taCenter
          Caption = 'Pre'#231'o 13'
          Layout = tlCenter
          ExplicitWidth = 57
          ExplicitHeight = 18
        end
        object Label36: TLabel
          Left = 715
          Top = 2
          Width = 28
          Height = 24
          Align = alClient
          Layout = tlCenter
          ExplicitWidth = 5
          ExplicitHeight = 18
        end
        object Label37: TLabel
          Left = 743
          Top = 2
          Width = 103
          Height = 24
          Align = alClient
          Alignment = taCenter
          Caption = 'Pre'#231'o 14'
          Layout = tlCenter
          ExplicitWidth = 57
          ExplicitHeight = 18
        end
        object Label38: TLabel
          Left = 471
          Top = 26
          Width = 28
          Height = 27
          Align = alClient
          Layout = tlCenter
          ExplicitWidth = 5
          ExplicitHeight = 18
        end
        object Label39: TLabel
          Left = 593
          Top = 26
          Width = 28
          Height = 27
          Align = alClient
          Layout = tlCenter
          ExplicitWidth = 5
          ExplicitHeight = 18
        end
        object Label40: TLabel
          Left = 715
          Top = 26
          Width = 28
          Height = 27
          Align = alClient
          Layout = tlCenter
          ExplicitWidth = 5
          ExplicitHeight = 18
        end
        object Ed_PRECO08: TEdit
          Left = 2
          Top = 26
          Width = 97
          Height = 27
          Align = alClient
          Alignment = taCenter
          BevelEdges = [beLeft, beRight, beBottom]
          BevelKind = bkSoft
          BevelOuter = bvNone
          BorderStyle = bsNone
          CharCase = ecUpperCase
          Ctl3D = False
          MaxLength = 15
          ParentColor = True
          ParentCtl3D = False
          TabOrder = 0
          Text = '123456,789'
        end
        object Ed_PRECO09: TEdit
          Left = 127
          Top = 26
          Width = 97
          Height = 27
          Align = alClient
          Alignment = taCenter
          BevelEdges = [beLeft, beRight, beBottom]
          BevelKind = bkSoft
          BevelOuter = bvNone
          BorderStyle = bsNone
          CharCase = ecUpperCase
          Ctl3D = False
          MaxLength = 15
          ParentColor = True
          ParentCtl3D = False
          TabOrder = 1
          Text = '123456,789'
        end
        object Ed_PRECO10: TEdit
          Left = 252
          Top = 26
          Width = 97
          Height = 27
          Align = alClient
          Alignment = taCenter
          BevelEdges = [beLeft, beRight, beBottom]
          BevelKind = bkSoft
          BevelOuter = bvNone
          BorderStyle = bsNone
          CharCase = ecUpperCase
          Ctl3D = False
          MaxLength = 15
          ParentColor = True
          ParentCtl3D = False
          TabOrder = 2
          Text = '123456,789'
        end
        object Ed_PRECO11: TEdit
          Left = 377
          Top = 26
          Width = 94
          Height = 27
          Align = alClient
          Alignment = taCenter
          BevelEdges = [beLeft, beRight, beBottom]
          BevelKind = bkSoft
          BevelOuter = bvNone
          BorderStyle = bsNone
          CharCase = ecUpperCase
          Ctl3D = False
          MaxLength = 15
          ParentColor = True
          ParentCtl3D = False
          TabOrder = 3
          Text = '123456,789'
        end
        object Ed_PRECO12: TEdit
          Left = 499
          Top = 26
          Width = 94
          Height = 27
          Align = alClient
          Alignment = taCenter
          BevelEdges = [beLeft, beRight, beBottom]
          BevelKind = bkSoft
          BevelOuter = bvNone
          BorderStyle = bsNone
          CharCase = ecUpperCase
          Ctl3D = False
          MaxLength = 15
          ParentColor = True
          ParentCtl3D = False
          TabOrder = 4
          Text = '123456,789'
        end
        object Ed_PRECO13: TEdit
          Left = 621
          Top = 26
          Width = 94
          Height = 27
          Align = alClient
          Alignment = taCenter
          BevelEdges = [beLeft, beRight, beBottom]
          BevelKind = bkSoft
          BevelOuter = bvNone
          BorderStyle = bsNone
          CharCase = ecUpperCase
          Ctl3D = False
          MaxLength = 15
          ParentColor = True
          ParentCtl3D = False
          TabOrder = 5
          Text = '123456,789'
        end
        object Ed_PRECO14: TEdit
          Left = 743
          Top = 26
          Width = 103
          Height = 27
          Align = alClient
          Alignment = taCenter
          BevelEdges = [beLeft, beRight, beBottom]
          BevelKind = bkSoft
          BevelOuter = bvNone
          BorderStyle = bsNone
          CharCase = ecUpperCase
          Ctl3D = False
          MaxLength = 15
          ParentColor = True
          ParentCtl3D = False
          TabOrder = 6
          Text = '123456,789'
        end
      end
      object Grp_Precos3: TGridPanel
        Left = 3
        Top = 115
        Width = 848
        Height = 56
        Align = alTop
        BevelOuter = bvNone
        BorderWidth = 2
        ColumnCollection = <
          item
            Value = 11.561739757873860000
          end
          item
            Value = 3.401742083276205000
          end
          item
            Value = 11.561739757873860000
          end
          item
            Value = 3.401742083276205000
          end
          item
            Value = 11.584568886805850000
          end
          item
            Value = 3.381491408594314000
          end
          item
            Value = 11.240625449129190000
          end
          item
            Value = 3.381491408594314000
          end
          item
            Value = 11.240625449129190000
          end
          item
            Value = 3.381491408594314000
          end
          item
            Value = 11.240625449129190000
          end
          item
            Value = 3.381491408594314000
          end
          item
            Value = 11.240625449129190000
          end>
        ControlCollection = <
          item
            Column = 1
            Control = Label41
            Row = 0
          end
          item
            Column = 1
            Control = Label42
            Row = 1
          end
          item
            Column = 0
            Control = Label43
            Row = 0
          end
          item
            Column = 2
            Control = Label44
            Row = 0
          end
          item
            Column = 3
            Control = Label45
            Row = 0
          end
          item
            Column = 4
            Control = Label46
            Row = 0
          end
          item
            Column = 3
            Control = Label47
            Row = 1
          end
          item
            Column = 5
            Control = Label48
            Row = 0
          end
          item
            Column = 6
            Control = Label49
            Row = 0
          end
          item
            Column = 5
            Control = Label50
            Row = 1
          end
          item
            Column = 7
            Control = Label51
            Row = 0
          end
          item
            Column = 8
            Control = Label52
            Row = 0
          end
          item
            Column = 9
            Control = Label53
            Row = 0
          end
          item
            Column = 10
            Control = Label54
            Row = 0
          end
          item
            Column = 11
            Control = Label56
            Row = 0
          end
          item
            Column = 12
            Control = Label57
            Row = 0
          end
          item
            Column = 7
            Control = Label58
            Row = 1
          end
          item
            Column = 9
            Control = Label59
            Row = 1
          end
          item
            Column = 11
            Control = Label60
            Row = 1
          end
          item
            Column = 0
            Control = Ed_PRECO15
            Row = 1
          end
          item
            Column = 2
            Control = Ed_PRECO16
            Row = 1
          end
          item
            Column = 4
            Control = Ed_PRECO17
            Row = 1
          end
          item
            Column = 6
            Control = Ed_PRECO18
            Row = 1
          end
          item
            Column = 8
            Control = Ed_PRECO19
            Row = 1
          end
          item
            Column = 10
            Control = Ed_PRECO20
            Row = 1
          end
          item
            Column = 12
            Control = Ed_PRECO21
            Row = 1
          end>
        ParentColor = True
        RowCollection = <
          item
            Value = 48.000000000000000000
          end
          item
            Value = 52.000000000000000000
          end
          item
            SizeStyle = ssAuto
          end>
        TabOrder = 2
        object Label41: TLabel
          Left = 99
          Top = 2
          Width = 28
          Height = 24
          Align = alClient
          Layout = tlCenter
          ExplicitWidth = 5
          ExplicitHeight = 18
        end
        object Label42: TLabel
          Left = 99
          Top = 26
          Width = 28
          Height = 27
          Align = alClient
          Layout = tlCenter
          ExplicitWidth = 5
          ExplicitHeight = 18
        end
        object Label43: TLabel
          Left = 2
          Top = 2
          Width = 97
          Height = 24
          Align = alClient
          Alignment = taCenter
          Caption = 'Pre'#231'o 15'
          Layout = tlCenter
          ExplicitWidth = 57
          ExplicitHeight = 18
        end
        object Label44: TLabel
          Left = 127
          Top = 2
          Width = 97
          Height = 24
          Align = alClient
          Alignment = taCenter
          Caption = 'Pre'#231'o 16'
          Layout = tlCenter
          ExplicitWidth = 57
          ExplicitHeight = 18
        end
        object Label45: TLabel
          Left = 224
          Top = 2
          Width = 28
          Height = 24
          Align = alClient
          Layout = tlCenter
          ExplicitWidth = 5
          ExplicitHeight = 18
        end
        object Label46: TLabel
          Left = 252
          Top = 2
          Width = 97
          Height = 24
          Align = alClient
          Alignment = taCenter
          Caption = 'Pre'#231'o 17'
          Layout = tlCenter
          ExplicitWidth = 57
          ExplicitHeight = 18
        end
        object Label47: TLabel
          Left = 224
          Top = 26
          Width = 28
          Height = 27
          Align = alClient
          Layout = tlCenter
          ExplicitWidth = 5
          ExplicitHeight = 18
        end
        object Label48: TLabel
          Left = 349
          Top = 2
          Width = 28
          Height = 24
          Align = alClient
          Layout = tlCenter
          ExplicitWidth = 5
          ExplicitHeight = 18
        end
        object Label49: TLabel
          Left = 377
          Top = 2
          Width = 94
          Height = 24
          Align = alClient
          Alignment = taCenter
          Caption = 'Pre'#231'o 18'
          Layout = tlCenter
          ExplicitWidth = 57
          ExplicitHeight = 18
        end
        object Label50: TLabel
          Left = 349
          Top = 26
          Width = 28
          Height = 27
          Align = alClient
          Layout = tlCenter
          ExplicitWidth = 5
          ExplicitHeight = 18
        end
        object Label51: TLabel
          Left = 471
          Top = 2
          Width = 28
          Height = 24
          Align = alClient
          Layout = tlCenter
          ExplicitWidth = 5
          ExplicitHeight = 18
        end
        object Label52: TLabel
          Left = 499
          Top = 2
          Width = 94
          Height = 24
          Align = alClient
          Alignment = taCenter
          Caption = 'Pre'#231'o 19'
          Layout = tlCenter
          ExplicitWidth = 57
          ExplicitHeight = 18
        end
        object Label53: TLabel
          Left = 593
          Top = 2
          Width = 28
          Height = 24
          Align = alClient
          Layout = tlCenter
          ExplicitWidth = 5
          ExplicitHeight = 18
        end
        object Label54: TLabel
          Left = 621
          Top = 2
          Width = 94
          Height = 24
          Align = alClient
          Alignment = taCenter
          Caption = 'Pre'#231'o 20'
          Layout = tlCenter
          ExplicitWidth = 57
          ExplicitHeight = 18
        end
        object Label56: TLabel
          Left = 715
          Top = 2
          Width = 28
          Height = 24
          Align = alClient
          Layout = tlCenter
          ExplicitWidth = 5
          ExplicitHeight = 18
        end
        object Label57: TLabel
          Left = 743
          Top = 2
          Width = 103
          Height = 24
          Align = alClient
          Alignment = taCenter
          Caption = 'Pre'#231'o 21'
          Layout = tlCenter
          ExplicitWidth = 57
          ExplicitHeight = 18
        end
        object Label58: TLabel
          Left = 471
          Top = 26
          Width = 28
          Height = 27
          Align = alClient
          Layout = tlCenter
          ExplicitWidth = 5
          ExplicitHeight = 18
        end
        object Label59: TLabel
          Left = 593
          Top = 26
          Width = 28
          Height = 27
          Align = alClient
          Layout = tlCenter
          ExplicitWidth = 5
          ExplicitHeight = 18
        end
        object Label60: TLabel
          Left = 715
          Top = 26
          Width = 28
          Height = 27
          Align = alClient
          Layout = tlCenter
          ExplicitWidth = 5
          ExplicitHeight = 18
        end
        object Ed_PRECO15: TEdit
          Left = 2
          Top = 26
          Width = 97
          Height = 27
          Align = alClient
          Alignment = taCenter
          BevelEdges = [beLeft, beRight, beBottom]
          BevelKind = bkSoft
          BevelOuter = bvNone
          BorderStyle = bsNone
          CharCase = ecUpperCase
          Ctl3D = False
          MaxLength = 15
          ParentColor = True
          ParentCtl3D = False
          TabOrder = 0
          Text = '123456,789'
        end
        object Ed_PRECO16: TEdit
          Left = 127
          Top = 26
          Width = 97
          Height = 27
          Align = alClient
          Alignment = taCenter
          BevelEdges = [beLeft, beRight, beBottom]
          BevelKind = bkSoft
          BevelOuter = bvNone
          BorderStyle = bsNone
          CharCase = ecUpperCase
          Ctl3D = False
          MaxLength = 15
          ParentColor = True
          ParentCtl3D = False
          TabOrder = 1
          Text = '123456,789'
        end
        object Ed_PRECO17: TEdit
          Left = 252
          Top = 26
          Width = 97
          Height = 27
          Align = alClient
          Alignment = taCenter
          BevelEdges = [beLeft, beRight, beBottom]
          BevelKind = bkSoft
          BevelOuter = bvNone
          BorderStyle = bsNone
          CharCase = ecUpperCase
          Ctl3D = False
          MaxLength = 15
          ParentColor = True
          ParentCtl3D = False
          TabOrder = 2
          Text = '123456,789'
        end
        object Ed_PRECO18: TEdit
          Left = 377
          Top = 26
          Width = 94
          Height = 27
          Align = alClient
          Alignment = taCenter
          BevelEdges = [beLeft, beRight, beBottom]
          BevelKind = bkSoft
          BevelOuter = bvNone
          BorderStyle = bsNone
          CharCase = ecUpperCase
          Ctl3D = False
          MaxLength = 15
          ParentColor = True
          ParentCtl3D = False
          TabOrder = 3
          Text = '123456,789'
        end
        object Ed_PRECO19: TEdit
          Left = 499
          Top = 26
          Width = 94
          Height = 27
          Align = alClient
          Alignment = taCenter
          BevelEdges = [beLeft, beRight, beBottom]
          BevelKind = bkSoft
          BevelOuter = bvNone
          BorderStyle = bsNone
          CharCase = ecUpperCase
          Ctl3D = False
          MaxLength = 15
          ParentColor = True
          ParentCtl3D = False
          TabOrder = 4
          Text = '123456,789'
        end
        object Ed_PRECO20: TEdit
          Left = 621
          Top = 26
          Width = 94
          Height = 27
          Align = alClient
          Alignment = taCenter
          BevelEdges = [beLeft, beRight, beBottom]
          BevelKind = bkSoft
          BevelOuter = bvNone
          BorderStyle = bsNone
          CharCase = ecUpperCase
          Ctl3D = False
          MaxLength = 15
          ParentColor = True
          ParentCtl3D = False
          TabOrder = 5
          Text = '123456,789'
        end
        object Ed_PRECO21: TEdit
          Left = 743
          Top = 26
          Width = 103
          Height = 27
          Align = alClient
          Alignment = taCenter
          BevelEdges = [beLeft, beRight, beBottom]
          BevelKind = bkSoft
          BevelOuter = bvNone
          BorderStyle = bsNone
          CharCase = ecUpperCase
          Ctl3D = False
          MaxLength = 15
          ParentColor = True
          ParentCtl3D = False
          TabOrder = 6
          Text = '123456,789'
        end
      end
      object Grp_Precos4: TGridPanel
        Left = 3
        Top = 171
        Width = 848
        Height = 56
        Align = alTop
        BevelOuter = bvNone
        BorderWidth = 2
        ColumnCollection = <
          item
            Value = 11.561739757873860000
          end
          item
            Value = 3.401742083276205000
          end
          item
            Value = 11.561739757873860000
          end
          item
            Value = 3.401742083276205000
          end
          item
            Value = 11.584568886805850000
          end
          item
            Value = 3.381491408594314000
          end
          item
            Value = 11.240625449129190000
          end
          item
            Value = 3.381491408594314000
          end
          item
            Value = 11.240625449129190000
          end
          item
            Value = 3.381491408594314000
          end
          item
            Value = 11.240625449129190000
          end
          item
            Value = 3.381491408594314000
          end
          item
            Value = 11.240625449129190000
          end>
        ControlCollection = <
          item
            Column = 1
            Control = Label61
            Row = 0
          end
          item
            Column = 1
            Control = Label62
            Row = 1
          end
          item
            Column = 0
            Control = Label63
            Row = 0
          end
          item
            Column = 2
            Control = Label64
            Row = 0
          end
          item
            Column = 3
            Control = Label65
            Row = 0
          end
          item
            Column = 4
            Control = Label66
            Row = 0
          end
          item
            Column = 3
            Control = Label67
            Row = 1
          end
          item
            Column = 5
            Control = Label68
            Row = 0
          end
          item
            Column = 6
            Control = Label69
            Row = 0
          end
          item
            Column = 5
            Control = Label70
            Row = 1
          end
          item
            Column = 7
            Control = Label71
            Row = 0
          end
          item
            Column = 8
            Control = Label72
            Row = 0
          end
          item
            Column = 9
            Control = Label73
            Row = 0
          end
          item
            Column = 10
            Control = Label74
            Row = 0
          end
          item
            Column = 11
            Control = Label75
            Row = 0
          end
          item
            Column = 12
            Control = Label76
            Row = 0
          end
          item
            Column = 7
            Control = Label77
            Row = 1
          end
          item
            Column = 9
            Control = Label78
            Row = 1
          end
          item
            Column = 11
            Control = Label79
            Row = 1
          end
          item
            Column = 0
            Control = Ed_PRECO22
            Row = 1
          end
          item
            Column = 2
            Control = Ed_PRECO23
            Row = 1
          end
          item
            Column = 4
            Control = Ed_PRECO24
            Row = 1
          end
          item
            Column = 6
            Control = Ed_PRECO25
            Row = 1
          end
          item
            Column = 8
            Control = Ed_PRECO26
            Row = 1
          end
          item
            Column = 10
            Control = Ed_PRECO27
            Row = 1
          end
          item
            Column = 12
            Control = Ed_PRECO28
            Row = 1
          end>
        ParentColor = True
        RowCollection = <
          item
            Value = 48.000000000000000000
          end
          item
            Value = 52.000000000000000000
          end
          item
            SizeStyle = ssAuto
          end>
        TabOrder = 3
        object Label61: TLabel
          Left = 99
          Top = 2
          Width = 28
          Height = 24
          Align = alClient
          Layout = tlCenter
          ExplicitWidth = 5
          ExplicitHeight = 18
        end
        object Label62: TLabel
          Left = 99
          Top = 26
          Width = 28
          Height = 27
          Align = alClient
          Layout = tlCenter
          ExplicitWidth = 5
          ExplicitHeight = 18
        end
        object Label63: TLabel
          Left = 2
          Top = 2
          Width = 97
          Height = 24
          Align = alClient
          Alignment = taCenter
          Caption = 'Pre'#231'o 22'
          Layout = tlCenter
          ExplicitWidth = 57
          ExplicitHeight = 18
        end
        object Label64: TLabel
          Left = 127
          Top = 2
          Width = 97
          Height = 24
          Align = alClient
          Alignment = taCenter
          Caption = 'Pre'#231'o 23'
          Layout = tlCenter
          ExplicitWidth = 57
          ExplicitHeight = 18
        end
        object Label65: TLabel
          Left = 224
          Top = 2
          Width = 28
          Height = 24
          Align = alClient
          Layout = tlCenter
          ExplicitWidth = 5
          ExplicitHeight = 18
        end
        object Label66: TLabel
          Left = 252
          Top = 2
          Width = 97
          Height = 24
          Align = alClient
          Alignment = taCenter
          Caption = 'Pre'#231'o 24'
          Layout = tlCenter
          ExplicitWidth = 57
          ExplicitHeight = 18
        end
        object Label67: TLabel
          Left = 224
          Top = 26
          Width = 28
          Height = 27
          Align = alClient
          Layout = tlCenter
          ExplicitWidth = 5
          ExplicitHeight = 18
        end
        object Label68: TLabel
          Left = 349
          Top = 2
          Width = 28
          Height = 24
          Align = alClient
          Layout = tlCenter
          ExplicitWidth = 5
          ExplicitHeight = 18
        end
        object Label69: TLabel
          Left = 377
          Top = 2
          Width = 94
          Height = 24
          Align = alClient
          Alignment = taCenter
          Caption = 'Pre'#231'o 25'
          Layout = tlCenter
          ExplicitWidth = 57
          ExplicitHeight = 18
        end
        object Label70: TLabel
          Left = 349
          Top = 26
          Width = 28
          Height = 27
          Align = alClient
          Layout = tlCenter
          ExplicitWidth = 5
          ExplicitHeight = 18
        end
        object Label71: TLabel
          Left = 471
          Top = 2
          Width = 28
          Height = 24
          Align = alClient
          Layout = tlCenter
          ExplicitWidth = 5
          ExplicitHeight = 18
        end
        object Label72: TLabel
          Left = 499
          Top = 2
          Width = 94
          Height = 24
          Align = alClient
          Alignment = taCenter
          Caption = 'Pre'#231'o 26'
          Layout = tlCenter
          ExplicitWidth = 57
          ExplicitHeight = 18
        end
        object Label73: TLabel
          Left = 593
          Top = 2
          Width = 28
          Height = 24
          Align = alClient
          Layout = tlCenter
          ExplicitWidth = 5
          ExplicitHeight = 18
        end
        object Label74: TLabel
          Left = 621
          Top = 2
          Width = 94
          Height = 24
          Align = alClient
          Alignment = taCenter
          Caption = 'Pre'#231'o 27'
          Layout = tlCenter
          ExplicitWidth = 57
          ExplicitHeight = 18
        end
        object Label75: TLabel
          Left = 715
          Top = 2
          Width = 28
          Height = 24
          Align = alClient
          Layout = tlCenter
          ExplicitWidth = 5
          ExplicitHeight = 18
        end
        object Label76: TLabel
          Left = 743
          Top = 2
          Width = 103
          Height = 24
          Align = alClient
          Alignment = taCenter
          Caption = 'Pre'#231'o 28'
          Layout = tlCenter
          ExplicitWidth = 57
          ExplicitHeight = 18
        end
        object Label77: TLabel
          Left = 471
          Top = 26
          Width = 28
          Height = 27
          Align = alClient
          Layout = tlCenter
          ExplicitWidth = 5
          ExplicitHeight = 18
        end
        object Label78: TLabel
          Left = 593
          Top = 26
          Width = 28
          Height = 27
          Align = alClient
          Layout = tlCenter
          ExplicitWidth = 5
          ExplicitHeight = 18
        end
        object Label79: TLabel
          Left = 715
          Top = 26
          Width = 28
          Height = 27
          Align = alClient
          Layout = tlCenter
          ExplicitWidth = 5
          ExplicitHeight = 18
        end
        object Ed_PRECO22: TEdit
          Left = 2
          Top = 26
          Width = 97
          Height = 27
          Align = alClient
          Alignment = taCenter
          BevelEdges = [beLeft, beRight, beBottom]
          BevelKind = bkSoft
          BevelOuter = bvNone
          BorderStyle = bsNone
          CharCase = ecUpperCase
          Ctl3D = False
          MaxLength = 15
          ParentColor = True
          ParentCtl3D = False
          TabOrder = 0
          Text = '123456,789'
        end
        object Ed_PRECO23: TEdit
          Left = 127
          Top = 26
          Width = 97
          Height = 27
          Align = alClient
          Alignment = taCenter
          BevelEdges = [beLeft, beRight, beBottom]
          BevelKind = bkSoft
          BevelOuter = bvNone
          BorderStyle = bsNone
          CharCase = ecUpperCase
          Ctl3D = False
          MaxLength = 15
          ParentColor = True
          ParentCtl3D = False
          TabOrder = 1
          Text = '123456,789'
        end
        object Ed_PRECO24: TEdit
          Left = 252
          Top = 26
          Width = 97
          Height = 27
          Align = alClient
          Alignment = taCenter
          BevelEdges = [beLeft, beRight, beBottom]
          BevelKind = bkSoft
          BevelOuter = bvNone
          BorderStyle = bsNone
          CharCase = ecUpperCase
          Ctl3D = False
          MaxLength = 15
          ParentColor = True
          ParentCtl3D = False
          TabOrder = 2
          Text = '123456,789'
        end
        object Ed_PRECO25: TEdit
          Left = 377
          Top = 26
          Width = 94
          Height = 27
          Align = alClient
          Alignment = taCenter
          BevelEdges = [beLeft, beRight, beBottom]
          BevelKind = bkSoft
          BevelOuter = bvNone
          BorderStyle = bsNone
          CharCase = ecUpperCase
          Ctl3D = False
          MaxLength = 15
          ParentColor = True
          ParentCtl3D = False
          TabOrder = 3
          Text = '123456,789'
        end
        object Ed_PRECO26: TEdit
          Left = 499
          Top = 26
          Width = 94
          Height = 27
          Align = alClient
          Alignment = taCenter
          BevelEdges = [beLeft, beRight, beBottom]
          BevelKind = bkSoft
          BevelOuter = bvNone
          BorderStyle = bsNone
          CharCase = ecUpperCase
          Ctl3D = False
          MaxLength = 15
          ParentColor = True
          ParentCtl3D = False
          TabOrder = 4
          Text = '123456,789'
        end
        object Ed_PRECO27: TEdit
          Left = 621
          Top = 26
          Width = 94
          Height = 27
          Align = alClient
          Alignment = taCenter
          BevelEdges = [beLeft, beRight, beBottom]
          BevelKind = bkSoft
          BevelOuter = bvNone
          BorderStyle = bsNone
          CharCase = ecUpperCase
          Ctl3D = False
          MaxLength = 15
          ParentColor = True
          ParentCtl3D = False
          TabOrder = 5
          Text = '123456,789'
        end
        object Ed_PRECO28: TEdit
          Left = 743
          Top = 26
          Width = 103
          Height = 27
          Align = alClient
          Alignment = taCenter
          BevelEdges = [beLeft, beRight, beBottom]
          BevelKind = bkSoft
          BevelOuter = bvNone
          BorderStyle = bsNone
          CharCase = ecUpperCase
          Ctl3D = False
          MaxLength = 15
          ParentColor = True
          ParentCtl3D = False
          TabOrder = 6
          Text = '123456,789'
        end
      end
      object GridPanel1: TGridPanel
        Left = 3
        Top = 227
        Width = 848
        Height = 56
        Align = alTop
        BevelOuter = bvNone
        BorderWidth = 2
        ColumnCollection = <
          item
            Value = 11.561739757873860000
          end
          item
            Value = 3.401742083276205000
          end
          item
            Value = 11.561739757873860000
          end
          item
            Value = 3.401742083276205000
          end
          item
            Value = 11.584568886805850000
          end
          item
            Value = 3.381491408594314000
          end
          item
            Value = 11.240625449129190000
          end
          item
            Value = 3.381491408594314000
          end
          item
            Value = 11.240625449129190000
          end
          item
            Value = 3.381491408594314000
          end
          item
            Value = 11.240625449129190000
          end
          item
            Value = 3.381491408594314000
          end
          item
            Value = 11.240625449129190000
          end>
        ControlCollection = <
          item
            Column = 1
            Control = Label80
            Row = 0
          end
          item
            Column = 1
            Control = Label81
            Row = 1
          end
          item
            Column = 0
            Control = Label82
            Row = 0
          end
          item
            Column = 2
            Control = Label83
            Row = 0
          end
          item
            Column = 3
            Control = Label84
            Row = 0
          end
          item
            Column = 4
            Control = Label85
            Row = 0
          end
          item
            Column = 3
            Control = Label86
            Row = 1
          end
          item
            Column = 5
            Control = Label87
            Row = 0
          end
          item
            Column = 0
            Control = Ed_PRECO29
            Row = 1
          end
          item
            Column = 2
            Control = Ed_PRECO30
            Row = 1
          end
          item
            Column = 4
            Control = Ed_PRECO31
            Row = 1
          end>
        ParentColor = True
        RowCollection = <
          item
            Value = 48.000000000000000000
          end
          item
            Value = 52.000000000000000000
          end
          item
            SizeStyle = ssAuto
          end>
        TabOrder = 4
        object Label80: TLabel
          Left = 99
          Top = 2
          Width = 28
          Height = 24
          Align = alClient
          Layout = tlCenter
          ExplicitWidth = 5
          ExplicitHeight = 18
        end
        object Label81: TLabel
          Left = 99
          Top = 26
          Width = 28
          Height = 27
          Align = alClient
          Layout = tlCenter
          ExplicitWidth = 5
          ExplicitHeight = 18
        end
        object Label82: TLabel
          Left = 2
          Top = 2
          Width = 97
          Height = 24
          Align = alClient
          Alignment = taCenter
          Caption = 'Pre'#231'o 29'
          Layout = tlCenter
          ExplicitWidth = 57
          ExplicitHeight = 18
        end
        object Label83: TLabel
          Left = 127
          Top = 2
          Width = 97
          Height = 24
          Align = alClient
          Alignment = taCenter
          Caption = 'Pre'#231'o 30'
          Layout = tlCenter
          ExplicitWidth = 57
          ExplicitHeight = 18
        end
        object Label84: TLabel
          Left = 224
          Top = 2
          Width = 28
          Height = 24
          Align = alClient
          Layout = tlCenter
          ExplicitWidth = 5
          ExplicitHeight = 18
        end
        object Label85: TLabel
          Left = 252
          Top = 2
          Width = 97
          Height = 24
          Align = alClient
          Alignment = taCenter
          Caption = 'Pre'#231'o 31'
          Layout = tlCenter
          ExplicitWidth = 57
          ExplicitHeight = 18
        end
        object Label86: TLabel
          Left = 224
          Top = 26
          Width = 28
          Height = 27
          Align = alClient
          Layout = tlCenter
          ExplicitWidth = 5
          ExplicitHeight = 18
        end
        object Label87: TLabel
          Left = 349
          Top = 2
          Width = 28
          Height = 24
          Align = alClient
          Layout = tlCenter
          ExplicitWidth = 5
          ExplicitHeight = 18
        end
        object Ed_PRECO29: TEdit
          Left = 2
          Top = 26
          Width = 97
          Height = 27
          Align = alClient
          Alignment = taCenter
          BevelEdges = [beLeft, beRight, beBottom]
          BevelKind = bkSoft
          BevelOuter = bvNone
          BorderStyle = bsNone
          CharCase = ecUpperCase
          Ctl3D = False
          MaxLength = 15
          ParentColor = True
          ParentCtl3D = False
          TabOrder = 0
          Text = '123456,789'
        end
        object Ed_PRECO30: TEdit
          Left = 127
          Top = 26
          Width = 97
          Height = 27
          Align = alClient
          Alignment = taCenter
          BevelEdges = [beLeft, beRight, beBottom]
          BevelKind = bkSoft
          BevelOuter = bvNone
          BorderStyle = bsNone
          CharCase = ecUpperCase
          Ctl3D = False
          MaxLength = 15
          ParentColor = True
          ParentCtl3D = False
          TabOrder = 1
          Text = '123456,789'
        end
        object Ed_PRECO31: TEdit
          Left = 252
          Top = 26
          Width = 97
          Height = 27
          Align = alClient
          Alignment = taCenter
          BevelEdges = [beLeft, beRight, beBottom]
          BevelKind = bkSoft
          BevelOuter = bvNone
          BorderStyle = bsNone
          CharCase = ecUpperCase
          Ctl3D = False
          MaxLength = 15
          ParentColor = True
          ParentCtl3D = False
          TabOrder = 2
          Text = '123456,789'
        end
      end
    end
    object Pa_Marca: TPanel
      Left = 6
      Top = 70
      Width = 854
      Height = 55
      Align = alTop
      BevelOuter = bvNone
      BorderWidth = 2
      ParentColor = True
      TabOrder = 1
      object Grp_Marca: TGridPanel
        Left = 2
        Top = 2
        Width = 850
        Height = 28
        Align = alTop
        BevelOuter = bvNone
        BorderWidth = 3
        ColumnCollection = <
          item
            Value = 7.083505057800034000
          end
          item
            Value = 1.548608249036670000
          end
          item
            Value = 91.367886693163300000
          end>
        ControlCollection = <
          item
            Column = 1
            Control = Label55
            Row = 0
          end
          item
            Column = 0
            Control = Label3
            Row = 0
          end
          item
            Column = 2
            Control = Ed_MARCA
            Row = 0
          end>
        ParentColor = True
        RowCollection = <
          item
            Value = 100.000000000000000000
          end>
        TabOrder = 0
        object Label55: TLabel
          Left = 62
          Top = 3
          Width = 13
          Height = 22
          Align = alClient
          Layout = tlCenter
          ExplicitWidth = 5
          ExplicitHeight = 18
        end
        object Label3: TLabel
          Left = 3
          Top = 3
          Width = 45
          Height = 22
          Align = alLeft
          Caption = 'Marca:'
          Layout = tlCenter
          ExplicitHeight = 18
        end
        object Ed_MARCA: TEdit
          Left = 75
          Top = 3
          Width = 772
          Height = 24
          Align = alTop
          BevelEdges = [beBottom]
          BevelKind = bkSoft
          BevelOuter = bvNone
          BorderStyle = bsNone
          CharCase = ecUpperCase
          Ctl3D = True
          Enabled = False
          MaxLength = 79
          ParentColor = True
          ParentCtl3D = False
          TabOrder = 0
          Text = 'MARCA'
        end
      end
    end
    object Pa_Nome: TPanel
      Left = 6
      Top = 6
      Width = 854
      Height = 64
      Align = alTop
      BevelOuter = bvNone
      ParentColor = True
      TabOrder = 2
      DesignSize = (
        854
        64)
      object Label1: TLabel
        Left = 4
        Top = 13
        Width = 55
        Height = 18
        Caption = 'Produto:'
      end
      object Edt_PRODUTO: TEdit
        Left = 67
        Top = 9
        Width = 776
        Height = 26
        Anchors = [akLeft, akTop, akRight]
        BevelEdges = [beBottom]
        BevelKind = bkSoft
        BevelOuter = bvNone
        BorderStyle = bsNone
        CharCase = ecUpperCase
        Ctl3D = True
        MaxLength = 79
        ParentColor = True
        ParentCtl3D = False
        TabOrder = 0
        Text = 'NOME'
      end
    end
  end
end
