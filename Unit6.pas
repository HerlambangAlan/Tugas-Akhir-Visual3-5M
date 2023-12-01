unit Unit6;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, ZAbstractRODataset, ZAbstractDataset, ZDataset,
  ZAbstractConnection, ZConnection, Grids, DBGrids, StdCtrls, frxClass,
  frxDBSet;

type
  TForm6 = class(TForm)
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
    lbl7: TLabel;
    e5: TEdit;
    e6: TEdit;
    e7: TEdit;
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
  Form6: TForm6;
  id : string;

implementation

{$R *.dfm}

procedure TForm6.btnSimpanClick(Sender: TObject);
begin
 zqry1.SQL.Clear;
  zqry1.SQL.Add('insert into pemesanan values(null,"'+e1.Text+'","'+e2.Text+'","'+e3.Text+'","'+e4.Text+'","'+e5.Text+'","'+e6.Text+'","'+e7.Text+'")');
  zqry1.ExecSQL;

  zqry1.SQL.Clear;
  zqry1.SQL.Add('select * from pemesanan');
  zqry1.Open;
  Showmessage('DATA BERHASIL DI SIMPAN');
end;

procedure TForm6.btnEditClick(Sender: TObject);
begin
 zqry1.Edit;
zqry1.FieldByName('kode_pelanggan').Text:=e1.Text;
zqry1.FieldByName('kategori_pemesanan').Text:=e2.Text;
zqry1.FieldByName('ket_pemesanan').Text:=e3.Text;
zqry1.FieldByName('tgl_pemesanan').Text:=e4.Text;
zqry1.FieldByName('tgl_pengambilan').Text:=e5.Text;
zqry1.FieldByName('kode_admin').Text:=e6.Text;
zqry1.FieldByName('status_pemesanan').Text:=e7.Text;
end;

procedure TForm6.btnHapusClick(Sender: TObject);
begin
 zqry1.SQL.Clear;
  zqry1.SQL.Add('DELETE FROM pemesanan WHERE 1');
  zqry1.ExecSQL;

  zqry1.SQL.Clear;
  zqry1.SQL.Add('select * from pemesanan');
  zqry1.Open;
  ShowMessage('DATA BERHASIL DIHAPUS!');

end;

procedure TForm6.dbgrd1CellClick(Column: TColumn);
begin
e1.Text:=zqry1.FieldList[1].AsString;
   e2.Text:=zqry1.FieldList[2].AsString;
   e3.Text:=zqry1.FieldList[3].AsString;
   e4.Text:=zqry1.FieldList[4].AsString;
   e5.Text:=zqry1.FieldList[5].AsString;
   e6.Text:=zqry1.FieldList[6].AsString;
   e7.Text:=zqry1.FieldList[7].AsString;

end;

procedure TForm6.btnPrintClick(Sender: TObject);
begin
frxrprt1.ShowReport();
end;

end.
