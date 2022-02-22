unit VIEW.Padrao.Parametros1;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Parametros.ParametrosGlobais, Vcl.StdCtrls,
  Vcl.ExtCtrls, Vcl.Imaging.pngimage, Vcl.Buttons;

type
  TView_Parametros1 = class(TForm)
    Panel1: TPanel;
    Panel2: TPanel;
    Panel3: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Edt_IPDoServidor: TEdit;
    Cb_DriverBancoDeDados: TComboBox;
    Cb_ParametroCorPrincipal: TComboBox;
    Cb_ParametroCorConsulta: TComboBox;
    Cb_ParametroCorCadastros: TComboBox;
    Cb_ParametroCorLocacao: TComboBox;
    Pa_BotaoCancelar: TPanel;
    La_BotaoCancelar: TLabel;
    SpBt_Cancelar: TSpeedButton;
    Image3: TImage;
    Pa_BotaoGravar: TPanel;
    La_BotaoGravar: TLabel;
    SpBt_Gravar: TSpeedButton;
    Image1: TImage;
    Mem_Parametros: TMemo;
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
   Global: TParametrosGlobais;
  end;

var
  View_Parametros1: TView_Parametros1;

implementation

{$R *.dfm}

procedure TView_Parametros1.FormCreate(Sender: TObject);
begin
   Global:= TParametrosGlobais.Create;
   Mem_Parametros.Clear;
   Mem_parametros.Lines.LoadFromFile('C:\DF_LocacaoM1\caminho1.Txt');
   Global.IPDoServidor := Mem_Parametros.Lines[0];
   Global.DiretorioDoSistema := Mem_Parametros.Lines[1];
   Global.DriverBancoDeDados := Mem_Parametros.Lines[2];
   Global.ParametroCorPrincipal := Mem_Parametros.Lines[3];
   Global.ParametroCorConsulta :=  Mem_Parametros.Lines[4];
   Global.ParametroCorCadastros := Mem_Parametros.Lines[5];
   Global.ParametroCorLocacao :=   Mem_Parametros.Lines[6];
end;

procedure TView_Parametros1.FormDestroy(Sender: TObject);
begin
   FreeAndNil(Global);
end;

procedure TView_Parametros1.FormShow(Sender: TObject);
begin
//
end;

end.
