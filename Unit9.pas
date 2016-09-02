unit Unit9;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ComCtrls, Vcl.Buttons,
  Vcl.DBCtrls, Vcl.ExtCtrls, Data.SqlTimSt;

type
  TForm9 = class(TForm)
    BitBtn2: TBitBtn;
    Label3: TLabel;
    Label4: TLabel;
    DateTimePicker3: TDateTimePicker;
    DateTimePicker4: TDateTimePicker;
    procedure BitBtn2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form9: TForm9;

implementation

{$R *.dfm}

uses Unit1, Unit2, Unit3, Unit4, Unit5, Unit6, Unit7, Unit8;

procedure TForm9.BitBtn2Click(Sender: TObject);
var
N, Save: OleVariant;
i: integer;
St1, St2: string;
Sum, SumBN, SumN: currency;
begin
N:=ExtractFilePath(Application.ExeName)+'Doc4.doc';
Save:=ExtractFilePath(Application.ExeName)+'Doc\Отчет №1.doc';
Datamodule6.WordApplication1.Connect;
Try
Datamodule6.WordApplication1.Documents.Open(N,EmptyParam,EmptyParam,EmptyParam,
EmptyParam,EmptyParam,EmptyParam,EmptyParam,EmptyParam,EmptyParam,
EmptyParam,EmptyParam);
Datamodule6.WordDocument1.ConnectTo(Datamodule6.WordApplication1.ActiveDocument);
Datamodule6.WordDocument1.SaveAs(Save);
St1:=DateToStr(DateTimePicker3.Date);
Datamodule6.WordDocument1.Tables.Item(1).Cell(3,2).Range.InsertBefore(St1);
St2:=DateToStr(DateTimePicker4.Date);
Datamodule6.WordDocument1.Tables.Item(1).Cell(4,2).Range.InsertBefore(St2);
Datamodule6.ZakazQuery.Filter:='ДатаЗаказа>='+St1+' AND ДатаЗаказа<='+St2;
Datamodule6.ZakazQuery.Filtered:=True;
i:=1; Sum:=0; SumN:=0; SumBN:=0;
With Datamodule6.ZakazQuery do
begin
First;
while not EOF do
begin
St1:=IntToStr(i);
Datamodule6.WordDocument1.Tables.Item(2).Cell(2+i,1).Range.InsertBefore(St1);
St1:=DateTimeToStr(SQLTimeStampToDateTime(Datamodule6.ZakazQueryДатаЗаказа.Value));
Datamodule6.WordDocument1.Tables.Item(2).Cell(2+i,2).Range.InsertBefore(St1);
St1:=string(Datamodule6.ZakazQueryНазвание.Value);
Datamodule6.WordDocument1.Tables.Item(2).Cell(2+i,3).Range.InsertBefore(St1);
St1:=Datamodule6.ZakazQueryНомерТехники.Value;
Datamodule6.WordDocument1.Tables.Item(2).Cell(2+i,4).Range.InsertBefore(St1);
St1:=string(Datamodule6.ZakazQueryНаименование.Value);
Datamodule6.WordDocument1.Tables.Item(2).Cell(2+i,5).Range.InsertBefore(St1);
if Datamodule6.ZakazQueryВызов.Value=True then
Datamodule6.WordDocument1.Tables.Item(2).Cell(2+i,6).Range.InsertBefore('ДА')
else
Datamodule6.WordDocument1.Tables.Item(2).Cell(2+i,6).Range.InsertBefore('НЕТ');
St1:=string(Datamodule6.ZakazQueryИмяМастера.Value);
Datamodule6.WordDocument1.Tables.Item(2).Cell(2+i,7).Range.InsertBefore(St1);
St1:=DateTimeToStr(SQLTimeStampToDateTime(Datamodule6.ZakazQueryДатаВыполнения.Value));
Datamodule6.WordDocument1.Tables.Item(2).Cell(2+i,8).Range.InsertBefore(St1);
St1:=Datamodule6.ZakazQueryОплата.Value;
Datamodule6.WordDocument1.Tables.Item(2).Cell(2+i,9).Range.InsertBefore(St1);
if Datamodule6.ZakazQueryДоставка.Value=True then
Datamodule6.WordDocument1.Tables.Item(2).Cell(2+i,10).Range.InsertBefore('ДА')
else
Datamodule6.WordDocument1.Tables.Item(2).Cell(2+i,10).Range.InsertBefore('НЕТ');
St1:=Floattostr(Datamodule6.ZakazQueryСуммаЗаказа.Value);
Datamodule6.WordDocument1.Tables.Item(2).Cell(2+i,11).Range.InsertBefore(St1);
Sum:=Sum+Datamodule6.ZakazQueryСуммаЗаказа.Value;
if Datamodule6.ZakazQueryОплата.Value='нал' then
SumN:=SumN+Datamodule6.ZakazQueryСуммаЗаказа.Value;
if Datamodule6.ZakazQueryОплата.Value='безнал' then
SumBN:=SumBN+Datamodule6.ZakazQueryСуммаЗаказа.Value;
Datamodule6.WordDocument1.Tables.Item(2).Rows.Add(EmptyParam);
inc(i);
Next;
end;
end;
Datamodule6.WordDocument1.Tables.Item(2).Rows.Item(2+i).Delete;
St1:=Format('%m',[SumN]);
Datamodule6.WordDocument1.Tables.Item(3).Cell(1,2).Range.InsertBefore(St1);
St1:=Format('%m',[SumBN]);
Datamodule6.WordDocument1.Tables.Item(3).Cell(2,2).Range.InsertBefore(St1);
St1:=Format('%m',[Sum]);
Datamodule6.WordDocument1.Tables.Item(3).Cell(3,2).Range.InsertBefore(St1);
Datamodule6.WordApplication1.Visible:=true;
Except
begin
ShowMessage('Шаблон документа не найден!');
Datamodule6.WordApplication1.Disconnect;
exit;
end;
end;
Datamodule6.WordApplication1.Disconnect;
Datamodule6.ZakazQuery.Filtered:=False;
form9.Close;
end;
end.
