unit Unit4;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.DBCtrls, Vcl.ExtCtrls,
  Vcl.Grids, Vcl.DBGrids, Vcl.DBCGrids, Vcl.Mask;

type
  TForm4 = class(TForm)
    DBNavigator1: TDBNavigator;
    DBCtrlGrid1: TDBCtrlGrid;
    DBEdit1: TDBEdit;
    DBEdit2: TDBEdit;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    DBLookupComboBox1: TDBLookupComboBox;
    DBMemo1: TDBMemo;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form4: TForm4;

implementation

{$R *.dfm}

uses Unit1, Unit2, Unit3, Unit5, Unit6, Unit7, Unit8;

end.
