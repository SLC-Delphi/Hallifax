unit ufTESTE;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Error,
  FireDAC.UI.Intf, FireDAC.Phys.Intf, FireDAC.Stan.Def, FireDAC.Stan.Pool, FireDAC.Stan.Async, FireDAC.Phys,
  FireDAC.Phys.FB, FireDAC.Phys.FBDef, FireDAC.Stan.Param, FireDAC.DatS, FireDAC.DApt.Intf, FireDAC.DApt,
  FireDAC.Comp.DataSet, FireDAC.Comp.Client, Vcl.Grids, Vcl.DBGrids, Vcl.ExtCtrls,
  FireDAC.VCLUI.Wait, Vcl.StdCtrls, Vcl.Buttons;

type
  TForm_testando01 = class(TForm)
    Panel1: TPanel;
    Panel2: TPanel;
    DBGrid1: TDBGrid;
    Panel3: TPanel;
    FDConnection1: TFDConnection;
    FDTransaction1: TFDTransaction;
    FDQuery1: TFDQuery;
    DataSource1: TDataSource;
    BitBtn1: TBitBtn;
    procedure BitBtn1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form_testando01: TForm_testando01;

implementation

{$R *.dfm}

procedure TForm_testando01.BitBtn1Click(Sender: TObject);
begin
   FDQuery1.SQL.Clear;
   FDQuery1.SQL.Append('Select * From LOC_M1_Cad_Usuario where NOME_USUARIO like ''%Teste%'' ');
   FDQuery1.Prepare;
   FDQuery1.Active := True;
end;

end.
