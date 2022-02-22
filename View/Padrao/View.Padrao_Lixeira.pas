unit View.Padrao_Lixeira;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Buttons, Vcl.ExtCtrls;

type
  TForm_ConfirmaLixeira = class(TForm)
    Panel1: TPanel;
    Rb_Sim: TRadioButton;
    Rb_Nao: TRadioButton;
    Label2: TLabel;
    Label3: TLabel;
    Pa_Confirmado: TPanel;
    La_Confirmado: TLabel;
    SpBtn_Confirmado: TSpeedButton;
    Panel2: TPanel;
    Label1: TLabel;
    Panel3: TPanel;
    La_Dados: TLabel;
    procedure FormShow(Sender: TObject);
    procedure SpBtn_ConfirmadoClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    Fdados: String;
    FLixeira: Boolean;
    procedure Setdados(const Value: String);
    procedure SetLixeira(const Value: Boolean);
    { Private declarations }
  public
    { Public declarations }
    property dados: String read Fdados write Setdados;
    property Lixeira: Boolean read FLixeira write SetLixeira;
  end;

var
  Form_ConfirmaLixeira: TForm_ConfirmaLixeira;

implementation

{$R *.dfm}

{ TForm1 }

procedure TForm_ConfirmaLixeira.FormClose(Sender: TObject; var Action: TCloseAction);
begin
   Lixeira := Rb_Sim.Checked;
end;

procedure TForm_ConfirmaLixeira.FormShow(Sender: TObject);
begin
   La_Dados.Caption := dados;
   Rb_Nao.Checked := True;
end;

procedure TForm_ConfirmaLixeira.Setdados(const Value: String);
begin
  Fdados := Value;
end;

procedure TForm_ConfirmaLixeira.SetLixeira(const Value: Boolean);
begin
  FLixeira := Value;
end;

procedure TForm_ConfirmaLixeira.SpBtn_ConfirmadoClick(Sender: TObject);
begin
   Self.Close;
end;

end.
