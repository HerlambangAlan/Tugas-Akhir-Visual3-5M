object Form1: TForm1
  Left = 491
  Top = 362
  Width = 1305
  Height = 675
  Caption = 'Menu'
  Color = clSkyBlue
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  Menu = mm1
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object grp1: TGroupBox
    Left = 304
    Top = 104
    Width = 345
    Height = 337
    Caption = 'Login'
    Color = clYellow
    ParentColor = False
    TabOrder = 0
    object lbl1: TLabel
      Left = 56
      Top = 96
      Width = 49
      Height = 13
      Caption = 'UserName'
    end
    object lbl2: TLabel
      Left = 56
      Top = 120
      Width = 46
      Height = 13
      Caption = 'Password'
    end
    object btn1: TButton
      Left = 104
      Top = 184
      Width = 75
      Height = 25
      Caption = 'Login'
      TabOrder = 0
      OnClick = btn1Click
    end
    object btn2: TButton
      Left = 184
      Top = 184
      Width = 75
      Height = 25
      Caption = 'Buat Akun'
      TabOrder = 1
      OnClick = btn2Click
    end
    object e1: TEdit
      Left = 136
      Top = 88
      Width = 121
      Height = 21
      TabOrder = 2
    end
    object e2: TEdit
      Left = 136
      Top = 128
      Width = 121
      Height = 21
      TabOrder = 3
    end
  end
  object mm1: TMainMenu
    Left = 32
    Top = 24
    object DataLaundry1: TMenuItem
      Caption = 'Data Laundry'
      Visible = False
      object DataADmin1: TMenuItem
        Caption = 'Data ADmin'
        OnClick = DataADmin1Click
      end
      object DataDetailPemesanan1: TMenuItem
        Caption = 'Data Detail Pemesanan'
        OnClick = DataDetailPemesanan1Click
      end
      object DatapaketPelayanan1: TMenuItem
        Caption = 'Data paket Pelayanan'
        OnClick = DatapaketPelayanan1Click
      end
      object DataPelanggan1: TMenuItem
        Caption = 'Data Pelanggan'
        OnClick = DataPelanggan1Click
      end
      object DataPemesanan1: TMenuItem
        Caption = 'Data Pemesanan'
        OnClick = DataPemesanan1Click
      end
      object DataTransaksi1: TMenuItem
        Caption = 'Data Transaksi'
        OnClick = DataTransaksi1Click
      end
    end
    object Logout1: TMenuItem
      Caption = 'Logout'
      Visible = False
      OnClick = Logout1Click
    end
  end
end
