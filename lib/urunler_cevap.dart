import 'package:json_parse_kullanimi/urunler.dart';

class UrunlerCevap {
  List<Urunler> urunler;
  int success;

  UrunlerCevap({required this.urunler,required this.success});

  factory UrunlerCevap.fromJson(Map<String,dynamic> json) {
    var jsonArray = json["urunler"] as List;
    int success = json["success"] as int;

    List<Urunler> urunler = jsonArray.map((jsonArrayNesnesi) => Urunler.fromJson(jsonArrayNesnesi)).toList();

    return UrunlerCevap(urunler: urunler, success: success);
  }
}