unit Unit7;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, ZAbstractRODataset, ZAbstractDataset, ZDataset,
  ZAbstractConnection, ZConnection, Grids, DBGrids, StdCtrls, frxClass,
  frxDBSet;

type
  TForm7 = class(TForm)
    lbl3: TLabel;
    lbl4: TLabel;
    lbl5: TLabel;
    lbl6: TLabel;
    e1: TEdit;
    e2: TEdit;
    e3: TEdit;
    e4: TEdit;
    btnSimpan: TButton;
    btnEdit: TButton;
    btnHapus: TButton;
    btnPrint: TButton;
    dbgrd1: TDBGrid;
    con1: TZConnection;
    zqry1: TZQuery;
    ds1: TDataSource;
    lbl1: TLabel;
    lbl2: TLabel;
    e5: TEdit;
    e6: TEdit;
    frxrprt1: TfrxReport;
    frxdbdtst1: TfrxDBDataset;
    procedure btnSimpanClick(Sender: TObject);
    procedure btnEditClick(Sender: TObject);
    procedure btnHapusClick(Sender: TObject);
    procedure dbgrd1CellClick(Column: TColumn);
    procedure btnPrintClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form7: TForm7;
  id : string;

implementation

{$R *.dfm}

procedure TForm7.btnSimpanClick(Sender: TObject);
begin
 zqry1.SQL.Clear;
  zqry1.SQL.Add('insert into transaksi values(null,"'+e1.Text+'","'+e2.Text+'","'+e3.Text+'","'+e4.Text+'","'+e5.Text+'","'+e6.Text+'")');
  zqry1.ExecSQL;

  zqry1.SQL.Clear;
  zqry1.SQL.Add('select * from transaksi');
  zqry1.Open;
  Showmessage('DATA BERHASIL DI SIMPAN');
end;

procedure TForm7.btnEditClick(Sender: TObject);
begin
 zqry1.Edit;
zqry1.FieldByName('kode_pemesanan').Text:=e1.Text;
zqry1.FieldByName('total_bayar').Text:=e2.Text;
zqry1.FieldByName('uang_bayar').Text:=e3.Text;
zqry1.FieldByName('uang_kembali').Text:=e4.Text;
zqry1.FieldByName('kode_admin').Text:=e5.Text;
zqry1.FieldByName('tgl_transaksi').Text:=e6.Text;

end;

procedure TForm7.btnHapusClick(Sender: TObject);
begin
 zqry1.SQL.Clear;
  zqry1.SQL.Add('DELETE FROM transaksi WHERE 1');
  zqry1.ExecSQL;

  zqry1.SQL.Clear;
  zqry1.SQL.Add('select * from transaksi');
  zqry1.Open;
  ShowMessage('DATA BERHASIL DIHAPUS!');
end;

procedure TForm7.dbgrd1CellClick(Column: TColumn);
begin
 e1.Text:=zqry1.FieldList[1].AsString;
   e2.Text:=zqry1.FieldList[2].AsString;
   e3.Text:=zqry1.FieldList[3].AsString;
   e4.Text:=zqry1.FieldList[4].AsString;
   e5.Text:=zqry1.FieldList[5].AsString;
    e6.Text:=zqry1.FieldList[6].AsString;
end;

procedure TForm7.btnPrintClick(Sender: TObject);
begin
frxrprt1.ShowReport();
end;

end.
