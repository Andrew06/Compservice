unit Unit6;

interface

uses
  Winapi.Windows, Vcl.Dialogs, System.SysUtils, System.Variants, System.Classes, Winapi.Messages, Data.DB, Data.Win.ADODB, Word2000,
  Vcl.OleServer, IniFiles, Forms, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Error, FireDAC.UI.Intf, FireDAC.Phys.Intf, FireDAC.Stan.Def,
  FireDAC.Stan.Pool, FireDAC.Stan.Async, FireDAC.Phys, FireDAC.Phys.MSAcc,
  FireDAC.Phys.MSAccDef, FireDAC.VCLUI.Error, FireDAC.VCLUI.Login,
  FireDAC.VCLUI.Async, FireDAC.VCLUI.Script, FireDAC.VCLUI.Wait,
  FireDAC.Stan.Param, FireDAC.DatS, FireDAC.DApt.Intf, FireDAC.DApt,
  FireDAC.Comp.DataSet, FireDAC.Comp.Client, FireDAC.Comp.UI,
  FireDAC.Phys.ODBCBase;

type
  TDataModule6 = class(TDataModule)
    DSCat: TDataSource;
    DSMat: TDataSource;
    DSVid: TDataSource;
    DSMarka: TDataSource;
    DSClient: TDataSource;
    DSRabota: TDataSource;
    WordApplication1: TWordApplication;
    WordDocument1: TWordDocument;
    DSMaster: TDataSource;
    DSTexnika: TDataSource;
    DSZakaz: TDataSource;
    DSRemont: TDataSource;
    DSSumRemont: TDataSource;
    DSRashod: TDataSource;
    DSSumRashod: TDataSource;
    FDConnection1: TFDConnection;
    FDGUIxErrorDialog1: TFDGUIxErrorDialog;
    FDGUIxLoginDialog1: TFDGUIxLoginDialog;
    FDGUIxAsyncExecuteDialog1: TFDGUIxAsyncExecuteDialog;
    FDGUIxScriptDialog1: TFDGUIxScriptDialog;
    FDGUIxWaitCursor1: TFDGUIxWaitCursor;
    CatQuery: TFDQuery;
    FDPhysMSAccessDriverLink1: TFDPhysMSAccessDriverLink;
    CatQueryКодКатегории: TFDAutoIncField;
    CatQueryНаименование: TWideStringField;
    MatQuery: TFDQuery;
    MatQueryКодМатериала: TFDAutoIncField;
    MatQueryКодКатегории: TIntegerField;
    MatQueryИмяМатериала: TWideStringField;
    MatQueryОписание: TWideMemoField;
    MatQueryЦена: TCurrencyField;
    MarkaQuery: TFDQuery;
    MarkaQueryКодМарки: TFDAutoIncField;
    MarkaQueryМаркаТехники: TWideStringField;
    MarkaQueryОписание: TWideMemoField;
    VidQuery: TFDQuery;
    VidQueryКодВида: TFDAutoIncField;
    VidQueryВидТехники: TWideStringField;
    VidQueryОписание: TWideStringField;
    ClientQuery: TFDQuery;
    RabotaQuery: TFDQuery;
    RabotaQueryКодРаботы: TFDAutoIncField;
    RabotaQueryИмяРаботы: TWideStringField;
    RabotaQueryОписание: TWideMemoField;
    RabotaQueryЦенаРаботы: TCurrencyField;
    MasterQuery: TFDQuery;
    TexnikaQuery: TFDQuery;
    RemontQuery: TFDQuery;
    RashodQuery: TFDQuery;
    MasterQueryКодМастера: TFDAutoIncField;
    MasterQueryИмяМастера: TWideStringField;
    MasterQueryТелефонМастера: TWideStringField;
    MasterQueryСертификат: TWideStringField;
    FDMSAccessService1: TFDMSAccessService;
    TexnikaQueryНомерТехники: TWideStringField;
    TexnikaQueryНазвание: TWideStringField;
    TexnikaQueryВидТехники: TWideStringField;
    TexnikaQueryМаркаТехники: TWideStringField;
    ClientQueryКодКлиента: TFDAutoIncField;
    ClientQueryНаименование: TWideStringField;
    ClientQueryАдрес: TWideStringField;
    ClientQueryТелефон: TWideStringField;
    ClientQueryФакс: TWideStringField;
    ClientQueryEmail: TWideStringField;
    ZakazQuery: TFDQuery;
    ZakazQueryНомерЗаказа: TFDAutoIncField;
    ZakazQueryНазвание: TWideStringField;
    ZakazQueryНомерТехники: TWideStringField;
    ZakazQueryИмяМастера: TWideStringField;
    ZakazQueryНаименование: TWideStringField;
    ZakazQueryДатаЗаказа: TSQLTimeStampField;
    ZakazQueryДатаВыполнения: TSQLTimeStampField;
    ZakazQueryВыполнен: TBooleanField;
    ZakazQueryВызов: TBooleanField;
    ZakazQueryДоставка: TBooleanField;
    ZakazQueryОплата: TWideStringField;
    ZakazQueryКодМастера: TIntegerField;
    ZakazQueryКодТехники: TIntegerField;
    ZakazQueryКодКлиента: TIntegerField;
    RemontQueryИмяРаботы: TWideStringField;
    RemontQueryЦенаРаботы: TCurrencyField;
    RemontQueryВыполнена: TBooleanField;
    RemontQueryНомерЗаказа: TIntegerField;
    RashodQueryНаименование: TWideStringField;
    RashodQueryИмяМатериала: TWideStringField;
    RashodQueryКоличество: TIntegerField;
    RashodQueryЦена: TCurrencyField;
    RashodQueryНомерЗаказа: TIntegerField;
    RashodQueryКодКатегории: TIntegerField;
    RashodQueryКодМатериала: TIntegerField;
    TexnikaQueryКодКлиента: TIntegerField;
    SumRemontQuery: TFDQuery;
    SumRashodQuery: TFDQuery;
    SumRemontQueryНомерЗаказа: TIntegerField;
    SumRashodQueryНомерЗаказа: TIntegerField;
    RashodQueryСуммаРасхода: TCurrencyField;
    ZakazQueryСуммаЗаказа: TCurrencyField;
    procedure ADOTableMatAfterInsert(DataSet: TDataSet);
    procedure ADOTableRashodAfterInsert(DataSet: TDataSet);
    procedure ADOTableRashodCalcFields(DataSet: TDataSet);
    procedure DSZakazDataChange(Sender: TObject; Field: TField);
    procedure ADOTableZakazCalcFields(DataSet: TDataSet);
    procedure ADOTableTexnikaAfterInsert(DataSet: TDataSet);
    procedure ADOTableRashodRecordChangeComplete(DataSet: TCustomADODataSet;
      const Reason: TEventReason; const RecordCount: Integer;
      const Error: Error; var EventStatus: TEventStatus);
    procedure ADOTableRemontAfterInsert(DataSet: TDataSet);
    procedure ADOConnection1BeforeConnect(Sender: TObject);
    procedure SumRemontQueryCalcFields(DataSet: TDataSet);
    procedure SumRashodQueryCalcFields(DataSet: TDataSet);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  DataModule6: TDataModule6;
  DBPath:widestring;
  F:TIniFile;
  a: double;
implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

uses Unit1, Unit2, Unit3, Unit4, Unit5, Unit7, Unit8, Unit9;

{$R *.dfm}

procedure TDataModule6.ADOConnection1BeforeConnect(Sender: TObject);
begin
  if fdconnection1.Connected then
    fdconnection1.Close;
  F:=TIniFile.Create(ExtractFilePath(Application.ExeName)+'Options.ini');
  DBPath:=f.ReadString('Section_DBPath','Path', '');
  fdconnection1.ConnectionString:='DriverID=MSAcc; UserName=Admin; Database='+DBPath+'Database.accdb; ODBCAdvanced=DriverId=25;MaxBufferSize=2048;MaxScanRows=8;PageTimeout=5;SafeTransactions=0;Threads=3;UserCommitSync=Yes';
end;

procedure TDataModule6.ADOTableMatAfterInsert(DataSet: TDataSet);
begin
  if CatQueryКодКатегории.Value=Null then
   begin
    ShowMessage('Выберите категорию материала!');
    MatQuery.Cancel;
    Exit;
   end;
  MatQueryКодКатегории.Value:=CatQueryКодкатегории.Value;
end;

procedure TDataModule6.ADOTableRashodAfterInsert(DataSet: TDataSet);
begin
  if ZakazQueryНомерЗаказа.Value = Null then
    begin
      ShowMessage('Выберите заказ!');
      RashodQuery.Cancel;
      Exit;
    end;
   RashodQueryНомерЗаказа.Value:=ZakazQueryНомерЗаказа.Value;
  Form7.N1.Visible:=True;
  Form7.ShowModal;
end;

procedure TDataModule6.ADOTableRashodCalcFields(DataSet: TDataSet);
begin
  //RashodQueryСуммаРасхода.Value:=RashodQueryЦена.Value*RashodQueryКоличество.Value;
end;

procedure TDataModule6.ADOTableRashodRecordChangeComplete(
  DataSet: TCustomADODataSet; const Reason: TEventReason;
  const RecordCount: Integer; const Error: Error;
  var EventStatus: TEventStatus);
begin
  SumRashodQuery.Close;
  SumRashodQuery.Filter:='НомерЗаказа='+IntToStr(ZakazQueryНомерЗаказа.Value);
  SumRashodQuery.Filtered:=True;
  SumRashodQuery.Open;
end;

procedure TDataModule6.ADOTableRemontAfterInsert(DataSet: TDataSet);
begin
  if ZakazQueryНомерЗаказа.Value = Null then
  begin
  ShowMessage('Выберите заказ!');
  RemontQuery.Cancel;
  Exit;
  end;
  RemontQueryНомерЗаказа.Value:=ZakazQueryНомерЗаказа.Value;
end;

procedure TDataModule6.ADOTableTexnikaAfterInsert(DataSet: TDataSet);
begin
  if ClientQueryКодКлиента.Value = Null then
  begin
  ShowMessage('Выберите клиента!');
  TexnikaQuery.Cancel;
  Exit;
  end;
  TexnikaQueryКодКлиента.Value:=ClientQueryКодКлиента.Value;
end;

procedure TDataModule6.ADOTableZakazCalcFields(DataSet: TDataSet);
begin
//  SumRemontQuery.Close;
//  SumRemontQuery.Filter:='НомерЗаказа='+IntToStr(ZakazQueryНомерЗаказа.Value);
//  SumRemontQuery.Filtered:=True;
//  SumRemontQuery.Open;
//  SumRashodQuery.Close;
//  SumRashodQuery.Filter:='НомерЗаказа='+IntToStr(ZakazQueryНомерЗаказа.Value);
//  SumRashodQuery.Filtered:=True;
//  SumRashodQuery.Open;
//  ADOTableZakazСумма.Value:=ADOQSumRashodSumцена.Value//+ADOQSumRemontSumЦена.Value;
end;

procedure TDataModule6.DSZakazDataChange(Sender: TObject; Field: TField);
begin
  if ZakazQueryВызов.Value=True then
  Form1.BitBtn2.Caption:='ВЫЗОВ (откл.)'
  else
  Form1.BitBtn2.Caption:='ВЫЗОВ (вкл.)';
  if ZakazQueryДоставка.Value=True then
  Form1.BitBtn3.Caption:='ДОСТАВКА (откл.)'
  else
  Form1.BitBtn3.Caption:='ДОСТАВКА (вкл.)';
  if ZakazQueryВыполнен.Value=True then
  Form1.BitBtn4.Caption:='ГОТОВ (откл.)'
  else
  Form1.BitBtn4.Caption:='ГОТОВ (вкл.)';
  if ZakazQueryОплата.Value='нал' then
  begin
  Form1.BitBtn5.Caption:='БЕЗНАЛ (вкл.)';
  Form1.N17.Caption:='Наличный расчет';
  end
  else
  begin
  Form1.BitBtn5.Caption:='НАЛ (вкл.)';
  Form1.N17.Caption:='Безналичный расчет';
  end;
//  SumRemontQuery.Close;
//  SumRemontQuery.Filter:='НомерЗаказа='+IntToStr(ZakazQueryНомерЗаказа.Value);
//  SumRemontQuery.Filtered:=True;
//  SumRemontQuery.Open;
//  SumRashodQuery.Close;
//  SumRashodQuery.Filter:='НомерЗаказа='+IntToStr(ZakazQueryНомерЗаказа.Value);
//  SumRashodQuery.Filtered:=True;
//  SumRashodQuery.Open;
end;

procedure TDataModule6.SumRashodQueryCalcFields(DataSet: TDataSet);
begin
  RashodQuery.Open;
  RashodQuery.First;
  while not RashodQuery.Eof do
    begin
      //SumRashodQuerySumцена.Value:=SumRashodQuerySumцена.Value + RashodQueryСуммаРасхода.Value;
      RashodQuery.Next;
    end;
  //SumRashodQueryСумма.Value:=SumRashodQuerySumцена.Value;
end;

procedure TDataModule6.SumRemontQueryCalcFields(DataSet: TDataSet);
begin
  //SumRemontQuery.Close;
  //SumRemontQuery.Open;
end;

end.
