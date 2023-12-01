unit Unit8;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, frxClass, frxDBSet, DB, ZAbstractRODataset, ZAbstractDataset,
  ZDataset, ZAbstractConnection, ZConnection, Grids, DBGrids, StdCtrls;

type
  TForm8 = class(TForm)
    lbl3: TLabel;
    lbl4: TLabel;
    e1: TEdit;
    e2: TEdit;
    btnSimpan: TButton;
    btnEdit: TButton;
    btnHapus: TButton;
    btnPrint: TButton;
    dbgrd1: TDBGrid;
    con1: TZConnection;
    zqry1: TZQuery;
    ds1: TDataSource;
    frxrprt1: TfrxReport;
    frxdbdtst1: TfrxDBDataset;
    procedure dbgrd1CellClick(Column: TColumn);
    procedure btnSimpanClick(Sender: TObject);
    procedure btnHapusClick(Sender: TObject);
    procedure btnEditClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form8: TForm8;

implementation

{$R *.dfm}

procedure TForm8.dbgrd1CellClick(Column: TColumn);
begin
 e1.Text:=zqry1.FieldList[1].AsString;
   e2.Text:=zqry1.FieldList[2].AsString;
   
end;

procedure TForm8.btnSimpanClick(Sender: TObject);
begin
 zqry1.SQL.Clear;
  zqry1.SQL.Add('insert into buat_akun values(null,"'+e1.Text+'","'+e2.Text+'")');
  zqry1.ExecSQL;

  zqry1.SQL.Clear;
  zqry1.SQL.Add('select * from buat_akun');
  zqry1.Open;
  Showmessage('DATA BERHASIL DI SIMPAN');
end;

procedure TForm8.btnHapusClick(Sender: TObject);
begin
 zqry1.SQL.Clear;
  zqry1.SQL.Add('DELETE FROM buat_akun WHERE 1');
  zqry1.ExecSQL;

  zqry1.SQL.Clear;
  zqry1.SQL.Add('select * from buat_akun');
  zqry1.Open;
  ShowMessage('DATA BERHASIL DIHAPUS!');
end;

procedure TForm8.btnEditClick(Sender: TObject);
begin
  zqry1.Edit;
  zqry1.FieldByName('username').Text := e1.Text;
  zqry1.FieldByName('password').Text := e2.Text;

  zqry1.Post;

end;

end.
