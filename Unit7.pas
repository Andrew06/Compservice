unit Unit7;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.DBCtrls, Vcl.ExtCtrls,
  Vcl.Grids, Vcl.DBGrids, Vcl.Menus, Vcl.Mask, Vcl.DBCGrids;

type
  TForm7 = class(TForm)
    DBNavigator1: TDBNavigator;
    Label2: TLabel;
    DBLookupComboBox2: TDBLookupComboBox;
    MainMenu1: TMainMenu;
    N1: TMenuItem;
    DBMemo1: TDBMemo;
    Label1: TLabel;
    DBEdit1: TDBEdit;
    Label3: TLabel;
    Label4: TLabel;
    DBEdit2: TDBEdit;
    DBEdit3: TDBEdit;
    Label5: TLabel;
    DBLookupComboBox1: TDBLookupComboBox;
    Label6: TLabel;
    procedure FormActivate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure N1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure DBLookupComboBox2CloseUp(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form7: TForm7;

implementation

{$R *.dfm}

uses Unit1, Unit2, Unit3, Unit4, Unit5, Unit6, Unit8;

procedure TForm7.DBLookupComboBox2CloseUp(Sender: TObject);
begin
  if DBLookupComboBox2.KeyValue>=0 then
    begin
      Datamodule6.MatQuery.SQL.Clear;
      Datamodule6.MatQuery.SQL.Add('select m.КодМатериала,m.КодКатегории,m.ИмяМатериала,m.Описание,m.Цена from Материал m where m.КодКатегории='+inttostr(DBLookupComboBox2.KeyValue));
      DataModule6.MatQuery.Open;
    end;
end;

procedure TForm7.FormActivate(Sender: TObject);
begin
  if N1.Visible=True then
  ShowMessage('Выберите расходные материалы для ремонта и нажмите на кнопку "Добавить расход"!');
end;

procedure TForm7.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  DataModule6.RashodQuery.Cancel;
  N1.Visible:=False;
end;

procedure TForm7.FormCreate(Sender: TObject);
begin
  DataModule6.CatQuery.Open;
end;

procedure TForm7.FormShow(Sender: TObject);
begin
  DataModule6.CatQuery.Open;
end;

procedure TForm7.N1Click(Sender: TObject);
begin
  DataModule6.RashodQueryКодМатериала.Value:=DataModule6.MatQueryКодМатериала.Value;
  DataModule6.RashodQueryКодКатегории.Value:=DataModule6.MatQueryКодМатериала.Value;
  DataModule6.RashodQueryКоличество.Value:=1;
  DataModule6.RashodQuery.Post;
  Form7.Close;
end;

end.
