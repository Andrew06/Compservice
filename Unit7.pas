unit Unit7;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.DBCtrls, Vcl.ExtCtrls,
  Vcl.Grids, Vcl.DBGrids, Vcl.Menus, Vcl.Mask, Vcl.DBCGrids;

type
  TForm7 = class(TForm)
    DBNavigator1: TDBNavigator;
    DBCtrlGrid1: TDBCtrlGrid;
    DBLookupComboBox1: TDBLookupComboBox;
    Label1: TLabel;
    Label2: TLabel;
    DBLookupComboBox2: TDBLookupComboBox;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    DBEdit1: TDBEdit;
    DBEdit2: TDBEdit;
    DBEdit3: TDBEdit;
    Label6: TLabel;
    MainMenu1: TMainMenu;
    N1: TMenuItem;
    DBMemo1: TDBMemo;
    procedure FormActivate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure N1Click(Sender: TObject);
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

procedure TForm7.FormActivate(Sender: TObject);
begin
  if N1.Visible=True then
  ShowMessage('Выберите расходные материалы для ремонта и нажмите на кнопку "Добавить расход"!');
end;

procedure TForm7.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  DataModule6.ADOTableRashod.Cancel;
  N1.Visible:=False;
end;

procedure TForm7.N1Click(Sender: TObject);
begin
  DataModule6.ADOTableRashodКодМатериала.Value:=DataModule6.ADOTableMatКодМатериала.Value;
  DataModule6.ADOTableRashodКодКатегории.Value:=DataModule6.ADOTableMatКодМатериала.Value;
  DataModule6.ADOTableRashodКоличество.Value:=1;
  DataModule6.ADOTableRashod.Post;
  Form7.Close;
end;

end.
