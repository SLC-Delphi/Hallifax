unit Loc_M1_Cad_Usuario_Teste;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Vcl.Grids, Vcl.DBGrids,
  Halifax.Controller.Cad_UsuariosIB, Vcl.ExtCtrls, Vcl.StdCtrls, Vcl.Mask, Vcl.DBCtrls,
  Vcl.WinXCtrls, Vcl.Buttons;

type
  TForm_Teste01 = class(TForm)
    Pa_Fundo: TPanel;
    Pa_Top: TPanel;
    PaBottom: TPanel;
    DBGrid1: TDBGrid;
    GridPanel1: TGridPanel;
    La_Titulo: TLabel;
    Edt_Filtro: TEdit;
    Cb_Ordenar: TComboBox;
    La_Usuario: TLabel;
    Panel1: TPanel;
    Panel2: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    SpeedButton1: TSpeedButton;
    SpeedButton2: TSpeedButton;
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure FormResize(Sender: TObject);
  private
    { Private declarations }
    FCad_Usuario: TController_Cad_UsuarioIB;
    procedure TopAjustarLargura;
  public
    { Public declarations }
  end;

var
  Form_Teste01: TForm_Teste01;

implementation

{$R *.dfm}


procedure TForm_Teste01.FormCreate(Sender: TObject);
begin
  FCad_Usuario := TController_Cad_UsuarioIB.Create;
  DBGrid1.Ctl3D := False;
  DBGrid1.DrawingStyle := gdsClassic;
//  DBGrid1.Color := clSilver;
//  DBGrid1.FixedColor := clGray;
  DBGrid1.Columns[0].FieldName := 'CODIGO';
  DBGrid1.Columns[1].Width := 80;
  DBGrid1.Columns[1].FieldName := 'NOME_USUARIO';
  DBGrid1.Columns[1].Title.Caption := 'Nome:';
  DBGrid1.Columns[1].Width := 580;
  DBGrid1.Columns[2].FieldName := 'DATA_CADASTRO';
  DBGrid1.Columns[2].Title.Caption := 'Data de Cadastro';
  DBGrid1.Columns[2].Width := 120;
  DBGrid1.DataSource := FCad_Usuario.Propriedades.DataSet;
  DBGrid1.DataSource.Enabled := True;
  FCad_Usuario.Propriedades.GetSimple('');
  DBGrid1.Repaint;
  La_Usuario.Caption :='Usuario:' + #13 +'-';
  TopAjustarLargura;
end;

procedure TForm_Teste01.FormDestroy(Sender: TObject);
begin
   FreeAndNil(FCad_Usuario);
end;

procedure TForm_Teste01.FormResize(Sender: TObject);
begin
  TopAjustarLargura
end;

procedure TForm_Teste01.TopAjustarLargura;
begin
  La_Titulo.Width := Trunc(Pa_Fundo.Width * 0.18);
  Edt_Filtro.Width := Trunc(Pa_Fundo.Width * 0.425);
  Cb_Ordenar.Width := Trunc(Pa_Fundo.Width * 0.18);
  La_Usuario.Width := Trunc(Pa_Fundo.Width * 0.18);
end;

end.
