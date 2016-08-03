unit Unit1;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Menus, Vcl.StdCtrls, Vcl.Buttons,
  Vcl.ExtCtrls, Vcl.DBCtrls, Vcl.Grids, Vcl.DBGrids, Vcl.ImgList, Data.DB,
  Data.Win.ADODB, IniFiles, Vcl.Mask, System.ImageList, Vcl.ComCtrls,
  System.Win.TaskbarCore, Vcl.Taskbar, Vcl.JumpList;

type
  TForm1 = class(TForm)
    MainMenu1: TMainMenu;
    N1: TMenuItem;
    N2: TMenuItem;
    N3: TMenuItem;
    N4: TMenuItem;
    N5: TMenuItem;
    N6: TMenuItem;
    N7: TMenuItem;
    N8: TMenuItem;
    N9: TMenuItem;
    N10: TMenuItem;
    N11: TMenuItem;
    DBGrid1: TDBGrid;
    DBNavigator1: TDBNavigator;
    DBGrid2: TDBGrid;
    DBGrid3: TDBGrid;
    DBNavigator2: TDBNavigator;
    DBNavigator3: TDBNavigator;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    BitBtn3: TBitBtn;
    BitBtn4: TBitBtn;
    BitBtn5: TBitBtn;
    BitBtn6: TBitBtn;
    BitBtn7: TBitBtn;
    BitBtn8: TBitBtn;
    BitBtn9: TBitBtn;
    BitBtn10: TBitBtn;
    BitBtn11: TBitBtn;
    BitBtn12: TBitBtn;
    BitBtn13: TBitBtn;
    BitBtn14: TBitBtn;
    BitBtn15: TBitBtn;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    GroupBox1: TGroupBox;
    GroupBox2: TGroupBox;
    Label5: TLabel;
    Label6: TLabel;
    N12: TMenuItem;
    N13: TMenuItem;
    N14: TMenuItem;
    N15: TMenuItem;
    N16: TMenuItem;
    N17: TMenuItem;
    N18: TMenuItem;
    N19: TMenuItem;
    N20: TMenuItem;
    N21: TMenuItem;
    N22: TMenuItem;
    N23: TMenuItem;
    N24: TMenuItem;
    N25: TMenuItem;
    N26: TMenuItem;
    N27: TMenuItem;
    N28: TMenuItem;
    ImageList1: TImageList;
    DBText1: TDBText;
    DBText2: TDBText;
    Timer1: TTimer;
    Open_DB: TOpenDialog;
    N29: TMenuItem;
    N30: TMenuItem;
    N31: TMenuItem;
    StatusBar1: TStatusBar;
    Timer2: TTimer;
    N32: TMenuItem;
    N33: TMenuItem;
    Taskbar1: TTaskbar;
    TrayIcon1: TTrayIcon;
    JumpList1: TJumpList;
    PopupMenu1: TPopupMenu;
    N34: TMenuItem;
    procedure N4Click(Sender: TObject);
    procedure N5Click(Sender: TObject);
    procedure N6Click(Sender: TObject);
    procedure N7Click(Sender: TObject);
    procedure N8Click(Sender: TObject);
    procedure N9Click(Sender: TObject);
    procedure N10Click(Sender: TObject);
    procedure N11Click(Sender: TObject);
    procedure N15Click(Sender: TObject);
    procedure BitBtn6Click(Sender: TObject);
    procedure N23Click(Sender: TObject);
    procedure BitBtn7Click(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure BitBtn5Click(Sender: TObject);
    procedure BitBtn8Click(Sender: TObject);
    procedure N24Click(Sender: TObject);
    procedure N25Click(Sender: TObject);
    procedure BitBtn10Click(Sender: TObject);
    procedure N26Click(Sender: TObject);
    procedure N27Click(Sender: TObject);
    procedure BitBtn11Click(Sender: TObject);
    procedure BitBtn12Click(Sender: TObject);
    procedure N28Click(Sender: TObject);
    procedure N13Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure N14Click(Sender: TObject);
    procedure N16Click(Sender: TObject);
    procedure BitBtn4Click(Sender: TObject);
    procedure BitBtn3Click(Sender: TObject);
    procedure N17Click(Sender: TObject);
    procedure BitBtn9Click(Sender: TObject);
    procedure DBGrid1DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure DBGrid2DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure DBGrid2EditButtonClick(Sender: TObject);
    procedure N12Click(Sender: TObject);
    procedure N20Click(Sender: TObject);
    procedure N21Click(Sender: TObject);
    procedure N22Click(Sender: TObject);
    procedure BitBtn14Click(Sender: TObject);
    procedure BitBtn13Click(Sender: TObject);
    procedure BitBtn15Click(Sender: TObject);
    procedure Timer1Timer(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure N30Click(Sender: TObject);
    procedure Timer2Timer(Sender: TObject);
    procedure Taskbar1ThumbButtonClick(Sender: TObject; AButtonID: Integer);
    procedure N34Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;
  procedure Clos;
implementation

{$R *.dfm}

uses Unit2, Unit3, Unit4, Unit5, Unit6, Unit7, Unit8, Unit9, Unit10;

procedure Clos;
begin
  Form1.N23.Checked:=False;
  Form1.N24.Checked:=False;
  Form1.N25.Checked:=False;
  Form1.N26.Checked:=False;
  Form1.N27.Checked:=False;
  Form1.BitBtn7.Caption:='ГОТОВ (откл.)';
  Form1.BitBtn8.Caption:='НЕ ГОТОВ (откл.)';
  Form1.BitBtn9.Caption:='ДАТА (откл.)';
  Form1.BitBtn10.Caption:='№ ТЕХ. (откл.)';
  Form1.BitBtn11.Caption:='МАСТЕР (откл.)';
end;

procedure TForm1.BitBtn10Click(Sender: TObject);
begin
  N26.Click;
end;

procedure TForm1.BitBtn11Click(Sender: TObject);
begin
  N27.Click;
end;

procedure TForm1.BitBtn12Click(Sender: TObject);
begin
  N28.Click;
end;

procedure TForm1.BitBtn13Click(Sender: TObject);
begin
  N20.Click;
end;

procedure TForm1.BitBtn14Click(Sender: TObject);
begin
  N21.Click;
end;

procedure TForm1.BitBtn15Click(Sender: TObject);
begin
  N22.Click;
end;

procedure TForm1.BitBtn1Click(Sender: TObject);
begin
  N12.Click;
end;

procedure TForm1.BitBtn2Click(Sender: TObject);
begin
  N13.Click;
end;

procedure TForm1.BitBtn3Click(Sender: TObject);
begin
  N14.Click;
end;

procedure TForm1.BitBtn4Click(Sender: TObject);
begin
  N16.Click;
end;

procedure TForm1.BitBtn5Click(Sender: TObject);
begin
  N17.Click;
end;

procedure TForm1.BitBtn6Click(Sender: TObject);
begin
  N15.Click;
end;

procedure TForm1.BitBtn7Click(Sender: TObject);
begin
  N23.Click;
end;

procedure TForm1.BitBtn8Click(Sender: TObject);
begin
  N24.Click;
end;

procedure TForm1.BitBtn9Click(Sender: TObject);
begin
  N25.Click;
end;

procedure TForm1.DBGrid1DrawColumnCell(Sender: TObject; const Rect: TRect;
  DataCol: Integer; Column: TColumn; State: TGridDrawState);
var
  I:TBitmap;
begin
  I:=TBitmap.Create;
  if Column.FieldName='Вызов' then
  begin
    with DBGrid1.Canvas do
    begin
      FillRect(Rect);
      if Datamodule6.ADOTableZakazВызов.Value=True then
        ImageList1.GetBitmap(1,I)
      else
        ImageList1.GetBitmap(0,I);
      Draw(round((Rect.Left+Rect.Right-I.Width)/2),Rect.Top,I);
    end;
  end;
  if Column.FieldName='Доставка' then
  begin
    with DBGrid1.Canvas do
    begin
      FillRect(Rect);
      if Datamodule6.ADOTableZakazДоставка.Value=True then
        ImageList1.GetBitmap(1,I)
      else
        ImageList1.GetBitmap(0,I);
      Draw(round((Rect.Left+Rect.Right-I.Width)/2),Rect.Top,I);
    end;
  end;
  if Column.FieldName='Выполнен' then
  begin
    with DBGrid1.Canvas do
    begin
      FillRect(Rect);
      if Datamodule6.ADOTableZakazВыполнен.Value=True then
        ImageList1.GetBitmap(0,I)
      else
        ImageList1.GetBitmap(1,I);
      Draw(round((Rect.Left+Rect.Right-I.Width)/2),Rect.Top,I);
    end;
  end;
end;

procedure TForm1.DBGrid2DrawColumnCell(Sender: TObject; const Rect: TRect;
  DataCol: Integer; Column: TColumn; State: TGridDrawState);
var
  I:TBitmap;
begin
  I:=TBitmap.Create;
  if Column.FieldName='Выполнена' then
  begin
    with DBGrid2.Canvas do
    begin
      FillRect(Rect);
      if Datamodule6.ADOTableRemontВыполнена.Value=True then
        ImageList1.GetBitmap(0,I)
      else
        ImageList1.GetBitmap(1,I);
      Draw(round((Rect.Left+Rect.Right-I.Width)/2),Rect.Top,I);
    end;
  end;
end;

procedure TForm1.DBGrid2EditButtonClick(Sender: TObject);
begin
  if Datamodule6.ADOTableRemont.RecordCount<>0 then
  begin
    Datamodule6.ADOTableRemont.Refresh;
    Datamodule6.ADOTableRemont.Edit;
    if Datamodule6.ADOTableRemontВыполнена.Value=False then
      Datamodule6.ADOTableRemontВыполнена.Value:=True
    else
      Datamodule6.ADOTableRemontВыполнена.Value:=False;
  Datamodule6.ADOTableRemont.Post;
  Datamodule6.ADOTableRemont.Refresh;
  end;
end;

procedure TForm1.FormShow(Sender: TObject);
begin
  if Datamodule6.ADOConnection1.Connected then
    Datamodule6.ADOConnection1.Close;
  F:=TIniFile.Create(ExtractFilePath(Application.ExeName)+'Options.ini');
  DBPath:=f.ReadString('Section_DBPath','Path', '');
  try
    if DBPath='' then
      if Open_DB.Execute then
        begin
          DBPath:=ExtractFilePath(Form1.Open_DB.FileName);
          F.WriteString('Section_DBPath','Path',DBPath);
          Datamodule6.ADOConnection1.Close;
          Datamodule6.ADOConnection1.ConnectionString:='Provider=Microsoft.ACE.OLEDB.12.0;Data Source='+DBPath+'Database.accdb;Persist Security Info=False ';
          Datamodule6.ADOConnection1.Open;
         end;
  finally
    F.Free;
  end;
  if Datamodule6.FDConnection1.Connected then
    Datamodule6.FDConnection1.Close;
  F:=TIniFile.Create(ExtractFilePath(Application.ExeName)+'Options.ini');
  DBPath:=f.ReadString('Section_DBPath','Path', '');
  try
    if DBPath='' then
      if Open_DB.Execute then
        begin
          DBPath:=ExtractFilePath(Form1.Open_DB.FileName);
          F.WriteString('Section_DBPath','Path',DBPath);
          Datamodule6.FDConnection1.Close;
          Datamodule6.fdconnection1.ConnectionString:='DriverID=MSacc; UserName=Admin; Database='+DBPath+'Database.accdb;';
          Datamodule6.FDConnection1.Open;
         end;
  finally
    F.Free;
 end;
  Datamodule6.CatQuery.Active:= true;
  DataModule6.CatQuery.Open;
  Datamodule6.MatQuery.Active:= true;
  DataModule6.MatQuery.Open;
  Datamodule6.MarkaQuery.Active:= true;
  DataModule6.MarkaQuery.Open;
  Datamodule6.VidQuery.Active:= true;
  DataModule6.VidQuery.Open;
  Datamodule6.ClientQuery.Active:= true;
  DataModule6.ClientQuery.Open;
  Datamodule6.MasterQuery.Active:= true;
  DataModule6.MasterQuery.Open;
  Datamodule6.TexnikaQuery.Active:= true;
  DataModule6.TexnikaQuery.Open;
//  Datamodule6.ADOTableCat.Active:= true;
//  Datamodule6.ADOTableMat.Active:= true;
//  Datamodule6.ADOTableVid.Active:= true;
//  Datamodule6.ADOTableMarka.Active:= true;
//  Datamodule6.ADOTableClient.Active:= true;
  Datamodule6.ADOTableRabota.Active:= true;
//  Datamodule6.ADOTableMaster.Active:= true;
//  Datamodule6.ADOTableTexnika.Active:= true;
  Datamodule6.ADOTableZakaz.Active:= true;
  Datamodule6.ADOTableRemont.Active:= true;
  Datamodule6.ADOTableRashod.Active:= true;
  Timer1.Enabled:= true;
end;

procedure TForm1.N10Click(Sender: TObject);
begin
  Form9.ShowModal;
end;

procedure TForm1.N11Click(Sender: TObject);
begin
  Form10.ShowModal;
end;

procedure TForm1.N12Click(Sender: TObject);
begin
  Form2.N1.Visible:=True;
  Form2.ShowModal;
end;

procedure TForm1.N13Click(Sender: TObject);
begin
  Datamodule6.ADOTableZakaz.Edit;
  if Datamodule6.ADOTableZakazВызов.Value=False then
    Datamodule6.ADOTableZakazВызов.Value:=True
  else
    Datamodule6.ADOTableZakazВызов.Value:=False;
  Datamodule6.ADOTableZakaz.Post;
  Datamodule6.ADOTableZakaz.Refresh;
end;

procedure TForm1.N14Click(Sender: TObject);
begin
  Datamodule6.ADOTableZakaz.Edit;
  if Datamodule6.ADOTableZakazДоставка.Value=False then
    Datamodule6.ADOTableZakazДоставка.Value:=True
  else
    Datamodule6.ADOTableZakazДоставка.Value:=False;
  Datamodule6.ADOTableZakaz.Post;
  Datamodule6.ADOTableZakaz.Refresh;
end;

procedure TForm1.N15Click(Sender: TObject);
begin
  IF MessageBox(Handle,'УДАЛЕНИЕ ЗАКАЗА'+#10+
  'Вы действительно хотите удалить заказ?'+#10+
  'После нажатия на кнопку ДА, данные будут удалены.'+#10+
  'Для отмены удаления нажмите на кнопку НЕТ.', 'ВНИМАНИЕ',
  MB_YesNo+MB_ICONWARNING+MB_TaskModal) = mrYes Then
    Begin
      Datamodule6.ADOTableZakaz.Delete;
    End;
end;

procedure TForm1.N16Click(Sender: TObject);
begin
  Datamodule6.ADOTableZakaz.Edit;
  if Datamodule6.ADOTableZakazВыполнен.Value=False then
    begin
      Datamodule6.ADOTableZakazВыполнен.Value:=True;
      Datamodule6.ADOTableZakazДатаВыполнения.Value:=Date();
    end
  else
    begin
      Datamodule6.ADOTableZakazВыполнен.Value:=False;
      Datamodule6.ADOTableZakazДатаВыполнения.Clear;
    end;
  Datamodule6.ADOTableZakaz.Post;
  Datamodule6.ADOTableZakaz.Refresh;
end;

procedure TForm1.N17Click(Sender: TObject);
begin
  Datamodule6.ADOTableZakaz.Edit;
  if Datamodule6.ADOTableZakazОплата.Value='нал' then
    Datamodule6.ADOTableZakazОплата.Value:='безнал'
  else
    Datamodule6.ADOTableZakazОплата.Value:='нал';
  Datamodule6.ADOTableZakaz.Post;
  Datamodule6.ADOTableZakaz.Refresh;
end;

procedure TForm1.N20Click(Sender: TObject);
var
  N, Save: OleVariant;
  St: string;
begin
  IF Datamodule6.ADOTableZakazНомерЗаказа.Value=Null Then
    begin
      Showmessage('Выберите заказ!');
      Exit;
    end;
  N:=ExtractFilePath(Application.ExeName)+'Doc1.doc';
  St:=IntToStr(Datamodule6.ADOTableZakazНомерЗаказа.Value);
  Save:=ExtractFilePath(Application.ExeName)+'Doc\Справка №'+St+'.doc';
  Datamodule6.WordApplication1.Connect;
  Try
    Datamodule6.WordApplication1.Documents.Open(N,EmptyParam,EmptyParam,EmptyParam,
    EmptyParam,EmptyParam,EmptyParam,EmptyParam,EmptyParam,EmptyParam,
    EmptyParam,EmptyParam);
    Datamodule6.WordDocument1.ConnectTo(Datamodule6.WordApplication1.ActiveDocument);
    Datamodule6.WordDocument1.SaveAs(Save);
    Datamodule6.WordDocument1.Tables.Item(1).Cell(14,2).Range.InsertBefore(St);
    St:=string(Datamodule6.ADOTableZakazКлиент.Value);
    Datamodule6.WordDocument1.Tables.Item(1).Cell(3,2).Range.InsertBefore(St);
    St:=string(Datamodule6.ADOTableClientТелефон.Value);
    Datamodule6.WordDocument1.Tables.Item(1).Cell(4,2).Range.InsertBefore(St);
    St:=string(Datamodule6.ADOTableClientФакс.Value);
    Datamodule6.WordDocument1.Tables.Item(1).Cell(5,2).Range.InsertBefore(St);
    St:=string(Datamodule6.ADOTableClientАдрес.Value);
    Datamodule6.WordDocument1.Tables.Item(1).Cell(6,2).Range.InsertBefore(St);
    St:=string(Datamodule6.ADOTableClientEmail.Value);
    Datamodule6.WordDocument1.Tables.Item(1).Cell(7,2).Range.InsertBefore(St);
    St:=Datamodule6.ADOTableZakazНомерТехники.Value;
    Datamodule6.WordDocument1.Tables.Item(1).Cell(9,2).Range.InsertBefore(St);
    St:=string(Datamodule6.ADOTableZakazТехника.Value);
    Datamodule6.WordDocument1.Tables.Item(1).Cell(10,2).Range.InsertBefore(St);
    St:=Datamodule6.ADOTableMarkaМаркаТехники.Value;
    Datamodule6.WordDocument1.Tables.Item(1).Cell(11,2).Range.InsertBefore(St);
    St:=Datamodule6.ADOTableVidВидТехники.Value;
    Datamodule6.WordDocument1.Tables.Item(1).Cell(12,2).Range.InsertBefore(St);
    St:=DateToStr(Datamodule6.ADOTableZakazДатаЗаказа.Value);
    Datamodule6.WordDocument1.Tables.Item(1).Cell(15,2).Range.InsertBefore(St);
    Datamodule6.WordApplication1.Visible:=true;
  Except
    begin
      ShowMessage('Шаблон документа не найден!');
      Datamodule6.WordApplication1.Disconnect;
      exit;
    end;
  end;
  Datamodule6.WordApplication1.Disconnect;
end;

procedure TForm1.N21Click(Sender: TObject);
var
N, Save: OleVariant;
St: string;
begin
  IF Datamodule6.ADOTableZakazНомерЗаказа.Value=Null Then
    begin
      Showmessage('Выберите заказ!');
      Exit;
    end;
  N:=ExtractFilePath(Application.ExeName)+'Doc2.doc';
  St:=IntToStr(Datamodule6.ADOTableZakazНомерЗаказа.Value);
  Save:=ExtractFilePath(Application.ExeName)+'Doc\Наряд №'+St+'.doc';
  Datamodule6.WordApplication1.Connect;
  Try
    Datamodule6.WordApplication1.Documents.Open(N,EmptyParam,EmptyParam,EmptyParam,
    EmptyParam,EmptyParam,EmptyParam,EmptyParam,EmptyParam,EmptyParam,
    EmptyParam,EmptyParam);
    Datamodule6.WordDocument1.ConnectTo(Datamodule6.WordApplication1.ActiveDocument);
    Datamodule6.WordDocument1.SaveAs(Save);
    Datamodule6.WordDocument1.Tables.Item(1).Cell(12,2).Range.InsertBefore(St);
    St:=string(Datamodule6.ADOTableZakazМастер.Value);
    Datamodule6.WordDocument1.Tables.Item(1).Cell(3,2).Range.InsertBefore(St);
    St:=Datamodule6.ADOTableMasterТелефонМастера.Value;
    Datamodule6.WordDocument1.Tables.Item(1).Cell(4,2).Range.InsertBefore(St);
    St:=Datamodule6.ADOTableMasterСертификат.Value;
    Datamodule6.WordDocument1.Tables.Item(1).Cell(5,2).Range.InsertBefore(St);
    St:=Datamodule6.ADOTableZakazНомерТехники.Value;
    Datamodule6.WordDocument1.Tables.Item(1).Cell(7,2).Range.InsertBefore(St);
    St:=string(Datamodule6.ADOTableZakazТехника.Value);
    Datamodule6.WordDocument1.Tables.Item(1).Cell(8,2).Range.InsertBefore(St);
    St:=Datamodule6.ADOTableMarkaМаркаТехники.Value;
    Datamodule6.WordDocument1.Tables.Item(1).Cell(9,2).Range.InsertBefore(St);
    St:=Datamodule6.ADOTableVidВидТехники.Value;
    Datamodule6.WordDocument1.Tables.Item(1).Cell(10,2).Range.InsertBefore(St);
    St:=DateToStr(Datamodule6.ADOTableZakazДатаЗаказа.Value);
    Datamodule6.WordDocument1.Tables.Item(1).Cell(13,2).Range.InsertBefore(St);
  Except
    begin
      ShowMessage('Шаблон документа не найден!');
      Datamodule6.WordApplication1.Disconnect;
      exit;
    end;
  end;
  Datamodule6.WordApplication1.Disconnect;
end;

procedure TForm1.N22Click(Sender: TObject);
var
  N, Save: OleVariant;
  i: integer;
  St: string;
begin
  IF Datamodule6.ADOTableZakazНомерЗаказа.Value=Null Then
    begin
    Showmessage('Выберите заказ!');
    Exit;
    end;
  N:=ExtractFilePath(Application.ExeName)+'Doc3.doc';
  St:=IntToStr(Datamodule6.ADOTableZakazНомерЗаказа.Value);
  Save:=ExtractFilePath(Application.ExeName)+'Doc\Акт №'+St+'.doc';
  Datamodule6.WordApplication1.Connect;
  Try
    Datamodule6.WordApplication1.Documents.Open(N,EmptyParam,EmptyParam,EmptyParam,
    EmptyParam,EmptyParam,EmptyParam,EmptyParam,EmptyParam,EmptyParam,
    EmptyParam,EmptyParam);
    Datamodule6.WordDocument1.ConnectTo(Datamodule6.WordApplication1.ActiveDocument);
    Datamodule6.WordDocument1.SaveAs(Save);
    Datamodule6.WordDocument1.Tables.Item(1).Cell(18,2).Range.InsertBefore(St);
    St:=string(Datamodule6.ADOTableZakazКлиент.Value);
    Datamodule6.WordDocument1.Tables.Item(1).Cell(3,2).Range.InsertBefore(St);
    St:=string(Datamodule6.ADOTableClientТелефон.Value);
    Datamodule6.WordDocument1.Tables.Item(1).Cell(4,2).Range.InsertBefore(St);
    St:=string(Datamodule6.ADOTableClientФакс.Value);
    Datamodule6.WordDocument1.Tables.Item(1).Cell(5,2).Range.InsertBefore(St);
    St:=string(Datamodule6.ADOTableClientАдрес.Value);
    Datamodule6.WordDocument1.Tables.Item(1).Cell(6,2).Range.InsertBefore(St);
    St:=string(Datamodule6.ADOTableClientEmail.Value);
    Datamodule6.WordDocument1.Tables.Item(1).Cell(7,2).Range.InsertBefore(St);
    St:=Datamodule6.ADOTableZakazНомерТехники.Value;
    Datamodule6.WordDocument1.Tables.Item(1).Cell(9,2).Range.InsertBefore(St);
    St:=string(Datamodule6.ADOTableZakazТехника.Value);
    Datamodule6.WordDocument1.Tables.Item(1).Cell(10,2).Range.InsertBefore(St);
    St:=Datamodule6.ADOTableMarkaМаркаТехники.Value;
    Datamodule6.WordDocument1.Tables.Item(1).Cell(11,2).Range.InsertBefore(St);
    St:=Datamodule6.ADOTableVidВидТехники.Value;
    Datamodule6.WordDocument1.Tables.Item(1).Cell(12,2).Range.InsertBefore(St);
    St:=string(Datamodule6.ADOTableZakazМастер.Value);
    Datamodule6.WordDocument1.Tables.Item(1).Cell(14,2).Range.InsertBefore(St);
    St:=Datamodule6.ADOTableMasterТелефонМастера.Value;
    Datamodule6.WordDocument1.Tables.Item(1).Cell(15,2).Range.InsertBefore(St);
    St:=Datamodule6.ADOTableMasterСертификат.Value;
    Datamodule6.WordDocument1.Tables.Item(1).Cell(16,2).Range.InsertBefore(St);
    St:=DateToStr(Datamodule6.ADOTableZakazДатаЗаказа.Value);
    Datamodule6.WordDocument1.Tables.Item(1).Cell(19,2).Range.InsertBefore(St);
    St:=DateToStr(Datamodule6.ADOTableZakazДатаВыполнения.Value);
    Datamodule6.WordDocument1.Tables.Item(1).Cell(20,2).Range.InsertBefore(St);
    if Datamodule6.ADOTableZakazВызов.Value=True then
      Datamodule6.WordDocument1.Tables.Item(1).Cell(21,2).Range.InsertBefore('ДА')
    else
      Datamodule6.WordDocument1.Tables.Item(1).Cell(21,2).Range.InsertBefore('НЕТ');
    if Datamodule6.ADOTableZakazДоставка.Value=True then
      Datamodule6.WordDocument1.Tables.Item(1).Cell(22,2).Range.InsertBefore('ДА')
    else
      Datamodule6.WordDocument1.Tables.Item(1).Cell(22,2).Range.InsertBefore('НЕТ');
    St:=floattostr(Datamodule6.ADOTableZakazСумма.Value);
    Datamodule6.WordDocument1.Tables.Item(1).Cell(23,2).Range.InsertBefore(St);
    i:=1;
    With Datamodule6.ADOTableRemont do
      begin
        First;
        while not EOF do
          begin
            St:=IntToStr(i);
            Datamodule6.WordDocument1.Tables.Item(2).Cell(2+i,1).Range.InsertBefore(St);
            St:=string(Datamodule6.ADOTableRemontРабота.Value);
            Datamodule6.WordDocument1.Tables.Item(2).Cell(2+i,2).Range.InsertBefore(St);
            St:=inttostr(Datamodule6.ADOTableRemontЦена.Value);
            Datamodule6.WordDocument1.Tables.Item(2).Cell(2+i,3).Range.InsertBefore(St);
            Datamodule6.WordDocument1.Tables.Item(2).Rows.Add(EmptyParam);
            inc(i);
            Next;
          end;
      end;
    Datamodule6.WordDocument1.Tables.Item(2).Rows.Item(2+i).Delete;
    i:=1;
    With Datamodule6.ADOTableRashod do
      begin
        First;
        while not EOF do
          begin
            St:=IntToStr(i);
            Datamodule6.WordDocument1.Tables.Item(3).Cell(2+i,1).Range.InsertBefore(St);
            St:=string(Datamodule6.ADOTableRashodКатегория.Value);
            Datamodule6.WordDocument1.Tables.Item(3).Cell(2+i,2).Range.InsertBefore(St);
            St:=string(Datamodule6.ADOTableRashodИмяМатериала.Value);
            Datamodule6.WordDocument1.Tables.Item(3).Cell(2+i,3).Range.InsertBefore(St);
            St:=inttostr(Datamodule6.ADOTableRashodЦена.Value);
            Datamodule6.WordDocument1.Tables.Item(3).Cell(2+i,4).Range.InsertBefore(St);
            St:=IntToStr(Datamodule6.ADOTableRashodКоличество.Value);
            Datamodule6.WordDocument1.Tables.Item(3).Cell(2+i,5).Range.InsertBefore(St);
            St:=inttostr(Datamodule6.ADOTableRashodСумма.Value);
            Datamodule6.WordDocument1.Tables.Item(3).Cell(2+i,6).Range.InsertBefore(St);
            Datamodule6.WordDocument1.Tables.Item(3).Rows.Add(EmptyParam);
            inc(i);
            Next;
          end;
      end;
    Datamodule6.WordDocument1.Tables.Item(3).Rows.Item(2+i).Delete;
  Except
    begin
      ShowMessage('Шаблон документа не найден!');
      Datamodule6.WordApplication1.Disconnect;
      exit;
    end;
  end;
  Datamodule6.WordApplication1.Disconnect;
end;

procedure TForm1.N23Click(Sender: TObject);
begin
  Clos;
  N23.Checked:=True;
  BitBtn7.Caption:='ГОТОВ (вкл.)';
  Datamodule6.ADOTableZakaz.Filter:='Выполнен=True';
  Datamodule6.ADOTableZakaz.Filtered:=True;
end;

procedure TForm1.N24Click(Sender: TObject);
begin
  Clos;
  N24.Checked:=True;
  BitBtn8.Caption:='НЕ ГОТОВ (вкл.)';
  Datamodule6.ADOTableZakaz.Filter:='Выполнен=False';
  Datamodule6.ADOTableZakaz.Filtered:=True;
end;

procedure TForm1.N25Click(Sender: TObject);
begin
  Clos;
  N25.Checked:=True;
  BitBtn9.Caption:='ДАТА (вкл.)';
  Datamodule6.ADOTableZakaz.Filter:='ДатаЗаказа='+DateToStr(Datamodule6.ADOTableZakazДатаЗаказа.Value);
  Datamodule6.ADOTableZakaz.Filtered:=True;
end;

procedure TForm1.N26Click(Sender: TObject);
begin
  Clos;
  N26.Checked:=True;
  BitBtn10.Caption:='№ТЕХ. (вкл.)'; Datamodule6.ADOTableZakaz.Filter:='НомерТехники='+Chr(39)+Datamodule6.ADOTableZakazНомерТехники.Value+Chr(39);
  Datamodule6.ADOTableZakaz.Filtered:=True;
end;

procedure TForm1.N27Click(Sender: TObject);
begin
  Clos;
  N27.Checked:=True;
  BitBtn11.Caption:='МАСТЕР (вкл.)';
  Datamodule6.ADOTableZakaz.Filter:='КодМастера='+IntToStr(Datamodule6.ADOTableZakazКодМастера.Value);
  Datamodule6.ADOTableZakaz.Filtered:=True;
end;

procedure TForm1.N28Click(Sender: TObject);
begin
  Clos;
  Datamodule6.ADOTableZakaz.Filtered:=False;
end;

procedure TForm1.N30Click(Sender: TObject);
begin
  Application.Terminate;
end;

procedure TForm1.N34Click(Sender: TObject);
begin
  Application.Terminate;
end;

procedure TForm1.N4Click(Sender: TObject);
begin
  Form2.ShowModal;
end;

procedure TForm1.N5Click(Sender: TObject);
begin
   Form3.ShowModal;
end;

procedure TForm1.N6Click(Sender: TObject);
begin
  Form4.ShowModal;
end;

procedure TForm1.N7Click(Sender: TObject);
begin
  Form5.ShowModal;
end;

procedure TForm1.N8Click(Sender: TObject);
begin
  Form7.ShowModal;
end;

procedure TForm1.N9Click(Sender: TObject);
begin
  Form8.ShowModal;
end;

procedure TForm1.Taskbar1ThumbButtonClick(Sender: TObject; AButtonID: Integer);
begin
  Application.Terminate;
end;

procedure TForm1.Timer1Timer(Sender: TObject);
begin
if datamodule6.ADOTableZakaz.Active=false then
   datamodule6.ADOTableZakaz.Active:=true;
   //else
   //timer1.Enabled:=false;
end;

procedure TForm1.Timer2Timer(Sender: TObject);
begin
  StatusBar1.Panels[1].Text:= DateTimeToStr(now);
end;

end.
