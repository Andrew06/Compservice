unit Unit5;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.DBCtrls, Vcl.ExtCtrls,
  Vcl.Grids, Vcl.DBGrids, Vcl.Mask, Vcl.DBCGrids;

type
  TForm5 = class(TForm)
    DBNavigator1: TDBNavigator;
    DBCtrlGrid1: TDBCtrlGrid;
    Label1: TLabel;
    DBLookupComboBox1: TDBLookupComboBox;
    DBEdit1: TDBEdit;
    DBEdit2: TDBEdit;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    DBMemo1: TDBMemo;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form5: TForm5;

implementation

{$R *.dfm}

uses Unit1, Unit2, Unit3, Unit4, Unit6, Unit7, Unit8;

end.
