import 'package:json_parse_kullanimi/filmler_siniflari/filmler.dart';

class FilmlerCevap {
  List<Filmler> filmler;
  int success;

  FilmlerCevap({required this.filmler,required this.success});

  factory FilmlerCevap.fromJson(Map<String,dynamic> json) {
    var jsonArray = json["filmler"] as List;
    int success = json["success"] as int;

    List<Filmler> filmler = jsonArray.map((jsonArrayNesnesi) => Filmler.fromJson(jsonArrayNesnesi)).toList();

    return FilmlerCevap(filmler: filmler, success: success);
  }
}