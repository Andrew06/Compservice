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
    ADOConnection1: TADOConnection;
    ADOTableCat: TADOTable;
    ADOTableMat: TADOTable;
    ADOTableVid: TADOTable;
    DSCat: TDataSource;
    DSMat: TDataSource;
    DSVid: TDataSource;
    DSMarka: TDataSource;
    DSClient: TDataSource;
    DSRabota: TDataSource;
    ADOTableMarka: TADOTable;
    ADOTableClient: TADOTable;
    ADOTableRabota: TADOTable;
    WordApplication1: TWordApplication;
    WordDocument1: TWordDocument;
    DSMaster: TDataSource;
    DSTexnika: TDataSource;
    DSZakaz: TDataSource;
    DSRemont: TDataSource;
    DSSumRemont: TDataSource;
    DSRashod: TDataSource;
    DSSumRashod: TDataSource;
    ADOTableMaster: TADOTable;
    ADOTableTexnika: TADOTable;
    ADOTableZakaz: TADOTable;
    ADOTableRemont: TADOTable;
    ADOTableRashod: TADOTable;
    ADOQSumRemont: TADOQuery;
    ADOQSumRashod: TADOQuery;
    ADOTableCatКодКатегории: TAutoIncField;
    ADOTableCatНаименование: TWideStringField;
    ADOTableMatКодМатериала: TAutoIncField;
    ADOTableMatКодКатегории: TIntegerField;
    ADOTableMatИмяМатериала: TWideStringField;
    ADOTableMatОписание: TWideMemoField;
    ADOTableMatЦена: TBCDField;
    ADOTableVidКодВида: TAutoIncField;
    ADOTableVidВидТехники: TWideStringField;
    ADOTableVidОписание: TWideStringField;
    ADOTableMarkaКодМарки: TAutoIncField;
    ADOTableMarkaМаркаТехники: TWideStringField;
    ADOTableMarkaОписание: TWideMemoField;
    ADOTableClientНаименование: TStringField;
    ADOTableClientАдрес: TStringField;
    ADOTableClientТелефон: TStringField;
    ADOTableClientФакс: TStringField;
    ADOTableClientEmail: TStringField;
    ADOTableClientКодКлиента: TAutoIncField;
    ADOTableRabotaКодРаботы: TAutoIncField;
    ADOTableRabotaИмяРаботы: TWideStringField;
    ADOTableRabotaОписание: TWideMemoField;
    ADOTableRabotaЦенаРаботы: TBCDField;
    ADOTableMasterКодМастера: TAutoIncField;
    ADOTableMasterИмяМастера: TWideStringField;
    ADOTableMasterТелефонМастера: TWideStringField;
    ADOTableMasterСертификат: TWideStringField;
    ADOTableTexnikaНомерТехники: TWideStringField;
    ADOTableTexnikaНазвание: TWideStringField;
    ADOTableTexnikaКодКлиента: TIntegerField;
    ADOTableZakazНомерЗаказа: TAutoIncField;
    ADOTableZakazНомерТехники: TWideStringField;
    ADOTableZakazКодМастера: TIntegerField;
    ADOTableZakazДатаЗаказа: TDateTimeField;
    ADOTableZakazДатаВыполнения: TDateTimeField;
    ADOTableZakazВыполнен: TBooleanField;
    ADOTableZakazВызов: TBooleanField;
    ADOTableZakazДоставка: TBooleanField;
    ADOTableZakazОплата: TWideStringField;
    ADOTableRemontНомерЗаказа: TIntegerField;
    ADOTableRemontКодРаботы: TIntegerField;
    ADOTableRemontВыполнена: TBooleanField;
    ADOTableRashodНомерЗаказа: TIntegerField;
    ADOTableRashodКодМатериала: TIntegerField;
    ADOTableRashodКоличество: TIntegerField;
    ADOTableTexnikaКодВида: TIntegerField;
    ADOTableTexnikaКодМарки: TIntegerField;
    ADOTableTexnikaВид: TStringField;
    ADOTableTexnikaМарка: TStringField;
    ADOTableRemontРабота: TStringField;
    ADOTableRemontЦена: TIntegerField;
    ADOTableRashodИмяМатериала: TStringField;
    ADOTableRashodЦена: TIntegerField;
    ADOTableRashodСумма: TIntegerField;
    ADOTableZakazТехника: TStringField;
    ADOTableZakazМастер: TStringField;
    ADOTableRashodКодКатегории: TIntegerField;
    ADOTableRashodКатегория: TStringField;
    ADOTableZakazКодКлиента: TIntegerField;
    ADOTableZakazКлиент: TStringField;
    ADOQSumRashodSumцена: TFloatField;
    ADOTableZakazСумма: TFloatField;
    ADOQSumRashodСумма: TFloatField;
    ADOQSumRemontНомерЗаказа: TIntegerField;
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
    ZakazQuery: TFDQuery;
    RemontQuery: TFDQuery;
    RashodQuery: TFDQuery;
    MasterQueryКодМастера: TFDAutoIncField;
    MasterQueryИмяМастера: TWideStringField;
    MasterQueryТелефонМастера: TWideStringField;
    MasterQueryСертификат: TWideStringField;
    TexnikaQueryНомерТехники: TWideStringField;
    TexnikaQueryНазвание: TWideStringField;
    TexnikaQueryКодКлиента: TIntegerField;
    TexnikaQueryКодВида: TIntegerField;
    TexnikaQueryКодМарки: TIntegerField;
    FDMSAccessService1: TFDMSAccessService;
    procedure ADOQSumRashodCalcFields(DataSet: TDataSet);
    procedure ADOTableMatAfterInsert(DataSet: TDataSet);
    procedure ADOTableRashodAfterInsert(DataSet: TDataSet);
    procedure ADOTableRashodCalcFields(DataSet: TDataSet);
    procedure DSZakazDataChange(Sender: TObject; Field: TField);
    procedure ADOTableZakazCalcFields(DataSet: TDataSet);
    procedure ADOTableTexnikaAfterInsert(DataSet: TDataSet);
    procedure ADOQSumRemontCalcFields(DataSet: TDataSet);
    procedure ADOTableRashodRecordChangeComplete(DataSet: TCustomADODataSet;
      const Reason: TEventReason; const RecordCount: Integer;
      const Error: Error; var EventStatus: TEventStatus);
    procedure ADOTableRemontAfterInsert(DataSet: TDataSet);
    procedure ADOConnection1BeforeConnect(Sender: TObject);
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
  if ADOConnection1.Connected then
    ADOConnection1.Close;
  F:=TIniFile.Create(ExtractFilePath(Application.ExeName)+'Options.ini');
  DBPath:=f.ReadString('Section_DBPath','Path', '');
  Datamodule6.ADOConnection1.ConnectionString:='Provider=Microsoft.ACE.OLEDB.12.0;Data Source='+DBPath+'Database.accdb;Persist Security Info=False ';
  if fdconnection1.Connected then
    fdconnection1.Close;
  F:=TIniFile.Create(ExtractFilePath(Application.ExeName)+'Options.ini');
  DBPath:=f.ReadString('Section_DBPath','Path', '');
  fdconnection1.ConnectionString:='DriverID=MSAcc; UserName=Admin; Database='+DBPath+'Database.accdb; ODBCAdvanced=DriverId=25;MaxBufferSize=2048;MaxScanRows=8;PageTimeout=5;SafeTransactions=0;Threads=3;UserCommitSync=Yes';
end;

procedure TDataModule6.ADOQSumRashodCalcFields(DataSet: TDataSet);
begin
  ADOTableRashod.Open;
  ADOTableRashod.First;
  while not ADOTableRashod.Eof do
    begin
      ADOQSumRashodSumцена.Value:=ADOQSumRashodSumцена.Value + ADOTableRashodСумма.Value;
      ADOTableRashod.Next;
    end;
  ADOQSumRashodСумма.Value:=ADOQSumRashodSumцена.Value;
end;

procedure TDataModule6.ADOQSumRemontCalcFields(DataSet: TDataSet);
begin
 ADOQSumRemont.Close;
 ADOQSumRemont.Open;
// ADOQSumRemontЦена.Value:=ADOQSumRemontSumЦена.Value;
end;

procedure TDataModule6.ADOTableMatAfterInsert(DataSet: TDataSet);
begin
  if ADOTableCatКодКатегории.Value=Null then
   begin
    ShowMessage('Выберите категорию материала!');
    ADOTableMat.Cancel;
    Exit;
   end;
  ADOTableMatКодКатегории.Value:=ADOTableCatКодкатегории.Value;
end;

procedure TDataModule6.ADOTableRashodAfterInsert(DataSet: TDataSet);
begin
  if ADOTableZakazНомерЗаказа.Value = Null then
    begin
      ShowMessage('Выберите заказ!');
      ADOTableRashod.Cancel;
      Exit;
    end;
   ADOTableRashodНомерЗаказа.Value:=ADOTableZakazНомерЗаказа.Value;
  Form7.N1.Visible:=True;
  Form7.ShowModal;
end;

procedure TDataModule6.ADOTableRashodCalcFields(DataSet: TDataSet);
begin
  ADOTableRashodСумма.Value:=ADOTableRashodЦена.Value*ADOTableRashodКоличество.Value;
end;

procedure TDataModule6.ADOTableRashodRecordChangeComplete(
  DataSet: TCustomADODataSet; const Reason: TEventReason;
  const RecordCount: Integer; const Error: Error;
  var EventStatus: TEventStatus);
begin
  ADOQSumRashod.Close;
  ADOQSumRashod.Filter:='НомерЗаказа='+IntToStr(ADOTableZakazНомерЗаказа.Value);
  ADOQSumRashod.Filtered:=True;
  ADOQSumRashod.Open;
end;

procedure TDataModule6.ADOTableRemontAfterInsert(DataSet: TDataSet);
begin
  if ADOTableZakazНомерЗаказа.Value = Null then
  begin
  ShowMessage('Выберите заказ!');
  ADOTableRemont.Cancel;
  Exit;
  end;
  ADOTableRemontНомерЗаказа.Value:=ADOTableZakazНомерЗаказа.Value;
end;

procedure TDataModule6.ADOTableTexnikaAfterInsert(DataSet: TDataSet);
begin
  if ADOTableClientКодКлиента.Value = Null then
  begin
  ShowMessage('Выберите клиента!');
  ADOTableTexnika.Cancel;
  Exit;
  end;
  ADOTableTexnikaКодКлиента.Value:=ADOTableClientКодКлиента.Value;
end;

procedure TDataModule6.ADOTableZakazCalcFields(DataSet: TDataSet);
begin
  ADOQSumRemont.Close;
  ADOQSumRemont.Filter:='НомерЗаказа='+IntToStr(ADOTableZakazНомерЗаказа.Value);
  ADOQSumRemont.Filtered:=True;
  ADOQSumRemont.Open;
  ADOQSumRashod.Close;
  ADOQSumRashod.Filter:='НомерЗаказа='+IntToStr(ADOTableZakazНомерЗаказа.Value);
  ADOQSumRashod.Filtered:=True;
  ADOQSumRashod.Open;
  ADOTableZakazСумма.Value:=ADOQSumRashodSumцена.Value//+ADOQSumRemontSumЦена.Value;
end;

procedure TDataModule6.DSZakazDataChange(Sender: TObject; Field: TField);
begin
  if ADOTableZakazВызов.Value=True then
  Form1.BitBtn2.Caption:='ВЫЗОВ (откл.)'
  else
  Form1.BitBtn2.Caption:='ВЫЗОВ (вкл.)';
  if ADOTableZakazДоставка.Value=True then
  Form1.BitBtn3.Caption:='ДОСТАВКА (откл.)'
  else
  Form1.BitBtn3.Caption:='ДОСТАВКА (вкл.)';
  if ADOTableZakazВыполнен.Value=True then
  Form1.BitBtn4.Caption:='ГОТОВ (откл.)'
  else
  Form1.BitBtn4.Caption:='ГОТОВ (вкл.)';
  if ADOTableZakazОплата.Value='нал' then
  begin
  Form1.BitBtn5.Caption:='БЕЗНАЛ (вкл.)';
  Form1.N17.Caption:='Наличный расчет';
  end
  else
  begin
  Form1.BitBtn5.Caption:='НАЛ (вкл.)';
  Form1.N17.Caption:='Безналичный расчет';
  end;
  ADOQSumRemont.Close;
  ADOQSumRemont.Filter:='НомерЗаказа='+IntToStr(ADOTableZakazНомерЗаказа.Value);
  ADOQSumRemont.Filtered:=True;
  ADOQSumRemont.Open;
  ADOQSumRashod.Close;
  ADOQSumRashod.Filter:='НомерЗаказа='+IntToStr(ADOTableZakazНомерЗаказа.Value);
  ADOQSumRashod.Filtered:=True;
  ADOQSumRashod.Open;
end;

end.
