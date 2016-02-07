unit Unit6;

interface

uses
  Winapi.Windows, Vcl.Dialogs, System.SysUtils, System.Variants, System.Classes, Winapi.Messages, Data.DB, Data.Win.ADODB, Word2000,
  Vcl.OleServer, IniFiles, Forms;

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
    ADOTableCat������������: TAutoIncField;
    ADOTableCat������������: TWideStringField;
    ADOTableMat������������: TAutoIncField;
    ADOTableMat������������: TIntegerField;
    ADOTableMat������������: TWideStringField;
    ADOTableMat��������: TWideMemoField;
    ADOTableMat����: TBCDField;
    ADOTableVid�������: TAutoIncField;
    ADOTableVid����������: TWideStringField;
    ADOTableVid��������: TWideStringField;
    ADOTableMarka��������: TAutoIncField;
    ADOTableMarka������������: TWideStringField;
    ADOTableMarka��������: TWideMemoField;
    ADOTableClient������������: TStringField;
    ADOTableClient�����: TStringField;
    ADOTableClient�������: TStringField;
    ADOTableClient����: TStringField;
    ADOTableClientEmail: TStringField;
    ADOTableClient����������: TAutoIncField;
    ADOTableRabota���������: TAutoIncField;
    ADOTableRabota���������: TWideStringField;
    ADOTableRabota��������: TWideMemoField;
    ADOTableRabota����������: TBCDField;
    ADOTableMaster����������: TAutoIncField;
    ADOTableMaster����������: TWideStringField;
    ADOTableMaster��������������: TWideStringField;
    ADOTableMaster����������: TWideStringField;
    ADOTableTexnika������������: TWideStringField;
    ADOTableTexnika��������: TWideStringField;
    ADOTableTexnika����������: TIntegerField;
    ADOTableZakaz�����������: TAutoIncField;
    ADOTableZakaz������������: TWideStringField;
    ADOTableZakaz����������: TIntegerField;
    ADOTableZakaz����������: TDateTimeField;
    ADOTableZakaz��������������: TDateTimeField;
    ADOTableZakaz��������: TBooleanField;
    ADOTableZakaz�����: TBooleanField;
    ADOTableZakaz��������: TBooleanField;
    ADOTableZakaz������: TWideStringField;
    ADOTableRemont�����������: TIntegerField;
    ADOTableRemont���������: TIntegerField;
    ADOTableRemont���������: TBooleanField;
    ADOTableRashod�����������: TIntegerField;
    ADOTableRashod������������: TIntegerField;
    ADOTableRashod����������: TIntegerField;
    ADOTableTexnika�������: TIntegerField;
    ADOTableTexnika��������: TIntegerField;
    ADOTableTexnika���: TStringField;
    ADOTableTexnika�����: TStringField;
    ADOTableRemont������: TStringField;
    ADOTableRemont����: TIntegerField;
    ADOTableRashod������������: TStringField;
    ADOTableRashod����: TIntegerField;
    ADOTableRashod�����: TIntegerField;
    ADOTableZakaz�������: TStringField;
    ADOTableZakaz������: TStringField;
    ADOTableRashod������������: TIntegerField;
    ADOTableRashod���������: TStringField;
    ADOTableZakaz����������: TIntegerField;
    ADOTableZakaz������: TStringField;
    ADOQSumRashodSum����: TFloatField;
    ADOTableZakaz�����: TFloatField;
    ADOQSumRashod�����: TFloatField;
    ADOQSumRemont�����������: TIntegerField;
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
  ADOConnection1.ConnectionString:='Provider=Microsoft.ACE.OLEDB.12.0;User ID=Admin;'+
  'Data Source='+DBPath+'Database.accdb;Mode=Share Deny None;Jet OLEDB:System database="";'+
  'Jet OLEDB:Registry Path="";Jet OLEDB:Database Password="";Jet OLEDB:Engine Type=6;'+
  'Jet OLEDB:Database Locking Mode=1;Jet OLEDB:Global Partial Bulk Ops=2;'+
  'Jet OLEDB:Global Bulk Transactions=1;Jet OLEDB:New Database Password="";'+
  'Jet OLEDB:Create System Database=False;Jet OLEDB:Encrypt Database=False;'+
  'Jet OLEDB:Compact Without Replica Repair=False;Jet OLEDB:SFP=False;Jet OLEDB:Support Complex Data=False;Jet OLEDB:Bypass UserInfo Validation=False;';
end;

procedure TDataModule6.ADOQSumRashodCalcFields(DataSet: TDataSet);
begin
  ADOTableRashod.Open;
 ADOTableRashod.First;
 while not ADOTableRashod.Eof do
  begin
  ADOQSumRashodSum����.Value:=ADOQSumRashodSum����.Value + ADOTableRashod�����.Value;
  ADOTableRashod.Next;
  end;
 ADOQSumRashod�����.Value:=ADOQSumRashodSum����.Value;
end;

procedure TDataModule6.ADOQSumRemontCalcFields(DataSet: TDataSet);
begin
 ADOQSumRemont.Close;
 ADOQSumRemont.Open;
// ADOQSumRemont����.Value:=ADOQSumRemontSum����.Value;
end;

procedure TDataModule6.ADOTableMatAfterInsert(DataSet: TDataSet);
begin
  if ADOTableCat������������.Value=Null then
   begin
    ShowMessage('�������� ��������� ���������!');
    ADOTableMat.Cancel;
    Exit;
   end;
  ADOTableMat������������.Value:=ADOTableCat������������.Value;
end;

procedure TDataModule6.ADOTableRashodAfterInsert(DataSet: TDataSet);
begin
  if ADOTableZakaz�����������.Value = Null then
    begin
      ShowMessage('�������� �����!');
      ADOTableRashod.Cancel;
      Exit;
    end;
   ADOTableRashod�����������.Value:=ADOTableZakaz�����������.Value;
  Form7.N1.Visible:=True;
  Form7.ShowModal;
end;

procedure TDataModule6.ADOTableRashodCalcFields(DataSet: TDataSet);
begin
  ADOTableRashod�����.Value:=ADOTableRashod����.Value*ADOTableRashod����������.Value;
end;

procedure TDataModule6.ADOTableRashodRecordChangeComplete(
  DataSet: TCustomADODataSet; const Reason: TEventReason;
  const RecordCount: Integer; const Error: Error;
  var EventStatus: TEventStatus);
begin
  ADOQSumRashod.Close;
  ADOQSumRashod.Filter:='�����������='+IntToStr(ADOTableZakaz�����������.Value);
  ADOQSumRashod.Filtered:=True;
  ADOQSumRashod.Open;
end;

procedure TDataModule6.ADOTableRemontAfterInsert(DataSet: TDataSet);
begin
  if ADOTableZakaz�����������.Value = Null then
  begin
  ShowMessage('�������� �����!');
  ADOTableRemont.Cancel;
  Exit;
  end;
  ADOTableRemont�����������.Value:=ADOTableZakaz�����������.Value;
end;

procedure TDataModule6.ADOTableTexnikaAfterInsert(DataSet: TDataSet);
begin
  if ADOTableClient����������.Value = Null then
  begin
  ShowMessage('�������� �������!');
  ADOTableTexnika.Cancel;
  Exit;
  end;
  ADOTableTexnika����������.Value:=ADOTableClient����������.Value;
end;

procedure TDataModule6.ADOTableZakazCalcFields(DataSet: TDataSet);
begin
  ADOQSumRemont.Close;
  ADOQSumRemont.Filter:='�����������='+IntToStr(ADOTableZakaz�����������.Value);
  ADOQSumRemont.Filtered:=True;
  ADOQSumRemont.Open;
  ADOQSumRashod.Close;
  ADOQSumRashod.Filter:='�����������='+IntToStr(ADOTableZakaz�����������.Value);
  ADOQSumRashod.Filtered:=True;
  ADOQSumRashod.Open;
  ADOTableZakaz�����.Value:=ADOQSumRashodSum����.Value//+ADOQSumRemontSum����.Value;
end;

procedure TDataModule6.DSZakazDataChange(Sender: TObject; Field: TField);
begin
  if ADOTableZakaz�����.Value=True then
  Form1.BitBtn2.Caption:='����� (����.)'
  else
  Form1.BitBtn2.Caption:='����� (���.)';
  if ADOTableZakaz��������.Value=True then
  Form1.BitBtn3.Caption:='�������� (����.)'
  else
  Form1.BitBtn3.Caption:='�������� (���.)';
  if ADOTableZakaz��������.Value=True then
  Form1.BitBtn4.Caption:='����� (����.)'
  else
  Form1.BitBtn4.Caption:='����� (���.)';
  if ADOTableZakaz������.Value='���' then
  begin
  Form1.BitBtn5.Caption:='������ (���.)';
  Form1.N17.Caption:='�������� ������';
  end
  else
  begin
  Form1.BitBtn5.Caption:='��� (���.)';
  Form1.N17.Caption:='����������� ������';
  end;
  ADOQSumRemont.Close;
  ADOQSumRemont.Filter:='�����������='+IntToStr(ADOTableZakaz�����������.Value);
  ADOQSumRemont.Filtered:=True;
  ADOQSumRemont.Open;
  ADOQSumRashod.Close;
  ADOQSumRashod.Filter:='�����������='+IntToStr(ADOTableZakaz�����������.Value);
  ADOQSumRashod.Filtered:=True;
  ADOQSumRashod.Open;
end;

end.
