class Urunler {
  int urun_id;
  String urun_adi;
  String urun_resim_adi;
  int urun_fiyati;

  Urunler({required this.urun_id,required this.urun_adi,required this.urun_resim_adi,required this.urun_fiyati});

  factory Urunler.fromJson(Map<String,dynamic> json) {
    return Urunler(
        urun_id: json["urun_id"] as int,
        urun_adi: json["urun_adi"] as String,
        urun_resim_adi: json["urun_resim_adi"] as String,
        urun_fiyati: json["urun_fiyati"] as int
    );
  }
}