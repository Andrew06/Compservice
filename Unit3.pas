unit Unit3;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.DBCtrls, Vcl.ExtCtrls,
  Vcl.Grids, Vcl.DBGrids, Vcl.Menus, Data.DB, Data.SqlTimSt;

type
  TForm3 = class(TForm)
    DBGrid1: TDBGrid;
    DBNavigator1: TDBNavigator;
    MainMenu1: TMainMenu;
    N1: TMenuItem;
    Label1: TLabel;
    DBLookupComboBox1: TDBLookupComboBox;
    procedure N1Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormActivate(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form3: TForm3;

implementation

{$R *.dfm}

uses Unit1, Unit2, Unit4, Unit5, Unit6, Unit7, Unit8;

procedure TForm3.FormActivate(Sender: TObject);
begin
  if N1.Visible=True then
  ShowMessage('�������� ������� ��� ������� ������� � ������� �� ������ "�������� �����"!');
end;

procedure TForm3.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  DataModule6.ZakazQuery.Cancel;
  Datamodule6.ZakazQuery.Open;
  N1.Visible:=False;
end;

procedure TForm3.FormShow(Sender: TObject);
begin
  DataModule6.MasterQuery.Open;
end;

procedure TForm3.N1Click(Sender: TObject);
begin
  DataModule6.ZakazQuery����������.Value:=DataModule6.MasterQuery����������.Value;
  DataModule6.ZakazQuery����������.Value:=DateTimeToSQLTimeStamp(Date());
  DataModule6.ZakazQuery.Post;
  Datamodule6.ZakazQuery.Open;
  Form3.Close;
end;

end.
