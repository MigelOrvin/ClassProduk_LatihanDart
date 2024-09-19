class Produk{
  String namaProduk;
  double harga;
  int jumlah;
  double diskon;

  Produk(this.namaProduk, this.harga, this.jumlah, this.diskon);

  void hitungTotalHargaTanpaDiskon(){
    print("Harga Total Sebelum Diskon\t: Rp.${jumlah*harga}");
  }

  void hitungTotalHargaSetelahDiskon(){
    var diskons = diskon/100;
    print("Harga Total Setelah Diskon\t: Rp.${jumlah*harga - (jumlah*harga*diskons)}");
  }

  void tampilkanInformasiProduk(){
  print("Nama Produk\t: $namaProduk \nHarga Satuan\t: $harga \nJumlah Beli\t: $jumlah \nDiskon\t\t: $diskon%\n");
  hitungTotalHargaTanpaDiskon();
  hitungTotalHargaSetelahDiskon();
  }
}

void main(){
  var produk = Produk("Kamera", 1500000, 2, 10);
  produk.tampilkanInformasiProduk();
}