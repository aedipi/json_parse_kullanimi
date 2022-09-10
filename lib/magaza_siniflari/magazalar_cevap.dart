import 'package:json_parse_kullanimi/magaza_siniflari/magazalar.dart';

class MagazalarCevap {
  List<Magazalar> magazalar;
  int success;

  MagazalarCevap({required this.magazalar,required this.success});

  factory MagazalarCevap.fromJson(Map<String,dynamic> json) {
    var jsonArray = json["magazalar"] as List;
    int success = json["success"] as int;

    List<Magazalar> magazalar = jsonArray.map((jsonArrayNesnesi) => Magazalar.fromJson(jsonArrayNesnesi)).toList();

    return MagazalarCevap(magazalar: magazalar, success: success);
  }
}