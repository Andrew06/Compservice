unit Unit2;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.DBCtrls, Vcl.ExtCtrls,
  Vcl.Grids, Vcl.DBGrids, Vcl.Menus, Data.DB, Data.Win.ADODB;

type
  TForm2 = class(TForm)
    DBGrid1: TDBGrid;
    DBNavigator1: TDBNavigator;
    DBGrid2: TDBGrid;
    DBNavigator2: TDBNavigator;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    MainMenu1: TMainMenu;
    N1: TMenuItem;
    DBLookupComboBox1: TDBLookupComboBox;
    DBLookupComboBox2: TDBLookupComboBox;
    procedure FormActivate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure N1Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure DBGrid1CellClick(Column: TColumn);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form2: TForm2;
  implementation

{$R *.dfm}

uses Unit1, Unit3, Unit4, Unit5, Unit6, Unit7, Unit8, Unit9;

procedure TForm2.DBGrid1CellClick(Column: TColumn);
begin
  Datamodule6.TexnikaQuery.Params.ParamByName('param').Value:=Datamodule6.ClientQuery.Fields[0].AsInteger;
  Datamodule6.TexnikaQuery.Open;
end;

procedure TForm2.FormActivate(Sender: TObject);
begin
  if N1.Visible=True then
  ShowMessage('Выберите технику клиента для ремонта и нажмите на кнопку "Добавить заказ"!');

end;

procedure TForm2.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  DataModule6.ZakazQuery.Close;
  N1.Visible:=False;
end;

procedure TForm2.FormShow(Sender: TObject);
begin
  Datamodule6.ClientQuery.Open;
  Datamodule6.TexnikaQuery.Params.ParamByName('param').Value:=Datamodule6.ClientQuery.Fields[0].AsInteger;
  Datamodule6.TexnikaQuery.Open;
end;

procedure TForm2.N1Click(Sender: TObject);
begin
  DataModule6.ZakazQuery.Insert;
  DataModule6.ZakazQueryНомерТехники.Value:=DataModule6.TexnikaQueryНомерТехники.Value;
  DataModule6.ZakazQueryКодКлиента.Value:=DataModule6.TexnikaQueryКодКлиента.Value;
  Form2.Close;
  Form3.N1.Visible:=True;
  Form3.ShowModal;
end;

end.
