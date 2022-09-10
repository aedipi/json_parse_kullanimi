import 'package:json_parse_kullanimi/magaza_siniflari/kategoriler.dart';

class Magazalar {
  String magaza_id;
  String magaza_ad;
  String magaza_resim_ad;
  String magaza_adres;
  String magaza_tel;
  Kategoriler kategori;

  Magazalar(
      { required this.magaza_id,
        required this.magaza_ad,
        required this.magaza_resim_ad,
        required this.magaza_adres,
        required this.magaza_tel,
        required this.kategori});

  factory Magazalar.fromJson(Map<String,dynamic> json) {
    return Magazalar(
        magaza_id: json["magaza_id"] as String,
        magaza_ad: json["magaza_ad"] as String,
        magaza_resim_ad: json["magaza_resim_ad"] as String,
        magaza_adres: json["magaza_adres"] as String,
        magaza_tel: json["magaza_tel"] as String,
        kategori: Kategoriler.fromJson(json["kategori"])
    );
  }
}