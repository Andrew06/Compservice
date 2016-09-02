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
    CatQuery������������: TFDAutoIncField;
    CatQuery������������: TWideStringField;
    MatQuery: TFDQuery;
    MatQuery������������: TFDAutoIncField;
    MatQuery������������: TIntegerField;
    MatQuery������������: TWideStringField;
    MatQuery��������: TWideMemoField;
    MatQuery����: TCurrencyField;
    MarkaQuery: TFDQuery;
    MarkaQuery��������: TFDAutoIncField;
    MarkaQuery������������: TWideStringField;
    MarkaQuery��������: TWideMemoField;
    VidQuery: TFDQuery;
    VidQuery�������: TFDAutoIncField;
    VidQuery����������: TWideStringField;
    VidQuery��������: TWideStringField;
    ClientQuery: TFDQuery;
    RabotaQuery: TFDQuery;
    RabotaQuery���������: TFDAutoIncField;
    RabotaQuery���������: TWideStringField;
    RabotaQuery��������: TWideMemoField;
    RabotaQuery����������: TCurrencyField;
    MasterQuery: TFDQuery;
    TexnikaQuery: TFDQuery;
    RemontQuery: TFDQuery;
    RashodQuery: TFDQuery;
    MasterQuery����������: TFDAutoIncField;
    MasterQuery����������: TWideStringField;
    MasterQuery��������������: TWideStringField;
    MasterQuery����������: TWideStringField;
    FDMSAccessService1: TFDMSAccessService;
    TexnikaQuery������������: TWideStringField;
    TexnikaQuery��������: TWideStringField;
    TexnikaQuery����������: TWideStringField;
    TexnikaQuery������������: TWideStringField;
    ClientQuery����������: TFDAutoIncField;
    ClientQuery������������: TWideStringField;
    ClientQuery�����: TWideStringField;
    ClientQuery�������: TWideStringField;
    ClientQuery����: TWideStringField;
    ClientQueryEmail: TWideStringField;
    ZakazQuery: TFDQuery;
    ZakazQuery�����������: TFDAutoIncField;
    ZakazQuery��������: TWideStringField;
    ZakazQuery������������: TWideStringField;
    ZakazQuery����������: TWideStringField;
    ZakazQuery������������: TWideStringField;
    ZakazQuery����������: TSQLTimeStampField;
    ZakazQuery��������������: TSQLTimeStampField;
    ZakazQuery��������: TBooleanField;
    ZakazQuery�����: TBooleanField;
    ZakazQuery��������: TBooleanField;
    ZakazQuery������: TWideStringField;
    ZakazQuery����������: TIntegerField;
    ZakazQuery����������: TIntegerField;
    ZakazQuery����������: TIntegerField;
    RemontQuery���������: TWideStringField;
    RemontQuery����������: TCurrencyField;
    RemontQuery���������: TBooleanField;
    RemontQuery�����������: TIntegerField;
    RashodQuery������������: TWideStringField;
    RashodQuery������������: TWideStringField;
    RashodQuery����������: TIntegerField;
    RashodQuery����: TCurrencyField;
    RashodQuery�����������: TIntegerField;
    RashodQuery������������: TIntegerField;
    RashodQuery������������: TIntegerField;
    TexnikaQuery����������: TIntegerField;
    SumRemontQuery: TFDQuery;
    SumRashodQuery: TFDQuery;
    SumRemontQuery�����������: TIntegerField;
    SumRashodQuery�����������: TIntegerField;
    RashodQuery������������: TCurrencyField;
    ZakazQuery�����������: TCurrencyField;
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
  if CatQuery������������.Value=Null then
   begin
    ShowMessage('�������� ��������� ���������!');
    MatQuery.Cancel;
    Exit;
   end;
  MatQuery������������.Value:=CatQuery������������.Value;
end;

procedure TDataModule6.ADOTableRashodAfterInsert(DataSet: TDataSet);
begin
  if ZakazQuery�����������.Value = Null then
    begin
      ShowMessage('�������� �����!');
      RashodQuery.Cancel;
      Exit;
    end;
   RashodQuery�����������.Value:=ZakazQuery�����������.Value;
  Form7.N1.Visible:=True;
  Form7.ShowModal;
end;

procedure TDataModule6.ADOTableRashodCalcFields(DataSet: TDataSet);
begin
  //RashodQuery������������.Value:=RashodQuery����.Value*RashodQuery����������.Value;
end;

procedure TDataModule6.ADOTableRashodRecordChangeComplete(
  DataSet: TCustomADODataSet; const Reason: TEventReason;
  const RecordCount: Integer; const Error: Error;
  var EventStatus: TEventStatus);
begin
  SumRashodQuery.Close;
  SumRashodQuery.Filter:='�����������='+IntToStr(ZakazQuery�����������.Value);
  SumRashodQuery.Filtered:=True;
  SumRashodQuery.Open;
end;

procedure TDataModule6.ADOTableRemontAfterInsert(DataSet: TDataSet);
begin
  if ZakazQuery�����������.Value = Null then
  begin
  ShowMessage('�������� �����!');
  RemontQuery.Cancel;
  Exit;
  end;
  RemontQuery�����������.Value:=ZakazQuery�����������.Value;
end;

procedure TDataModule6.ADOTableTexnikaAfterInsert(DataSet: TDataSet);
begin
  if ClientQuery����������.Value = Null then
  begin
  ShowMessage('�������� �������!');
  TexnikaQuery.Cancel;
  Exit;
  end;
  TexnikaQuery����������.Value:=ClientQuery����������.Value;
end;

procedure TDataModule6.ADOTableZakazCalcFields(DataSet: TDataSet);
begin
//  SumRemontQuery.Close;
//  SumRemontQuery.Filter:='�����������='+IntToStr(ZakazQuery�����������.Value);
//  SumRemontQuery.Filtered:=True;
//  SumRemontQuery.Open;
//  SumRashodQuery.Close;
//  SumRashodQuery.Filter:='�����������='+IntToStr(ZakazQuery�����������.Value);
//  SumRashodQuery.Filtered:=True;
//  SumRashodQuery.Open;
//  ADOTableZakaz�����.Value:=ADOQSumRashodSum����.Value//+ADOQSumRemontSum����.Value;
end;

procedure TDataModule6.DSZakazDataChange(Sender: TObject; Field: TField);
begin
  if ZakazQuery�����.Value=True then
  Form1.BitBtn2.Caption:='����� (����.)'
  else
  Form1.BitBtn2.Caption:='����� (���.)';
  if ZakazQuery��������.Value=True then
  Form1.BitBtn3.Caption:='�������� (����.)'
  else
  Form1.BitBtn3.Caption:='�������� (���.)';
  if ZakazQuery��������.Value=True then
  Form1.BitBtn4.Caption:='����� (����.)'
  else
  Form1.BitBtn4.Caption:='����� (���.)';
  if ZakazQuery������.Value='���' then
  begin
  Form1.BitBtn5.Caption:='������ (���.)';
  Form1.N17.Caption:='�������� ������';
  end
  else
  begin
  Form1.BitBtn5.Caption:='��� (���.)';
  Form1.N17.Caption:='����������� ������';
  end;
//  SumRemontQuery.Close;
//  SumRemontQuery.Filter:='�����������='+IntToStr(ZakazQuery�����������.Value);
//  SumRemontQuery.Filtered:=True;
//  SumRemontQuery.Open;
//  SumRashodQuery.Close;
//  SumRashodQuery.Filter:='�����������='+IntToStr(ZakazQuery�����������.Value);
//  SumRashodQuery.Filtered:=True;
//  SumRashodQuery.Open;
end;

procedure TDataModule6.SumRashodQueryCalcFields(DataSet: TDataSet);
begin
  RashodQuery.Open;
  RashodQuery.First;
  while not RashodQuery.Eof do
    begin
      //SumRashodQuerySum����.Value:=SumRashodQuerySum����.Value + RashodQuery������������.Value;
      RashodQuery.Next;
    end;
  //SumRashodQuery�����.Value:=SumRashodQuerySum����.Value;
end;

procedure TDataModule6.SumRemontQueryCalcFields(DataSet: TDataSet);
begin
  //SumRemontQuery.Close;
  //SumRemontQuery.Open;
end;

end.
