import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:json_parse_kullanimi/filmler_siniflari/filmler_cevap.dart';
import 'package:json_parse_kullanimi/mesajlar.dart';
import 'package:json_parse_kullanimi/urunler_cevap.dart';

import 'magaza_siniflari/magazalar_cevap.dart';

class Anasayfa extends StatefulWidget {
  const Anasayfa({Key? key}) : super(key: key);

  @override
  State<Anasayfa> createState() => _AnasayfaState();
}

class _AnasayfaState extends State<Anasayfa> {

  @override
  void initState() {
    super.initState();
    //mesajParse();
    //urunlerParse();
    //magazalarParse();
    filmlerParse();
  }


  void mesajParse(){
    String veri = '{"success":1,"message":"Başarılı"}';
    var jsonVeri = json.decode(veri);
    var mesaj = Mesajlar.fromJson(jsonVeri);
    print("Başarı : ${mesaj.success}");
    print("Mesaj : ${mesaj.message}");
  }

  void urunlerParse(){
    String veri = '{"urunler":[{"urun_id":1,"urun_adi":"Bilgisayar","urun_resim_adi":"bilgisayar.png","urun_fiyati":23000},{"urun_id":2,"urun_adi":"Gözlük","urun_resim_adi":"gozluk.png","urun_fiyati":1400},{"urun_id":3,"urun_adi":"Kulaklık","urun_resim_adi":"kulaklik.png","urun_fiyati":700},{"urun_id":4,"urun_adi":"Parfüm","urun_resim_adi":"parfum.png","urun_fiyati":1300},{"urun_id":5,"urun_adi":"Saat","urun_resim_adi":"saat.png","urun_fiyati":3500},{"urun_id":6,"urun_adi":"Süpürge","urun_resim_adi":"supurge.png","urun_fiyati":8700},{"urun_id":7,"urun_adi":"Telefon","urun_resim_adi":"telefon.png","urun_fiyati":18000}],"success":1}';

    var jsonVeri = jsonDecode(veri);
    var urunlerCevap = UrunlerCevap.fromJson(jsonVeri);
    var urunler = urunlerCevap.urunler;
    var success = urunlerCevap.success;
    print("Başarı : $success");
    print("****************************");
    
    for (var u in urunler) {
      print("---------------------------");
      print("Ürün id : ${u.urun_id}");
      print("Ürün adı : ${u.urun_adi}");
      print("Ürün resim adı : ${u.urun_resim_adi}");
      print("Ürün fiyatı : ${u.urun_fiyati} ₺");
    }
  }

  void magazalarParse(){
    String veri = '{"magazalar":[{"magaza_id":"1","magaza_ad":"Migros","magaza_resim_ad":"migros.png","magaza_adres":"Demirta\u015f","magaza_tel":"02241111111","kategori":{"kategori_id":"1","kategori_ad":"Elektronik"}},{"magaza_id":"2","magaza_ad":"\u015eok","magaza_resim_ad":"sok.png","magaza_adres":"Sakarya Mah.","magaza_tel":"0224222222","kategori":{"kategori_id":"2","kategori_ad":"Market"}},{"magaza_id":"3","magaza_ad":"Gratis","magaza_resim_ad":"gratis.png","magaza_adres":"Osmangazi","magaza_tel":"02243333333","kategori":{"kategori_id":"3","kategori_ad":"Kozmetik"}},{"magaza_id":"4","magaza_ad":"A101","magaza_resim_ad":"a101.png","magaza_adres":"Dumlup\u0131nar Mah.","magaza_tel":"02244444444","kategori":{"kategori_id":"2","kategori_ad":"Market"}},{"magaza_id":"5","magaza_ad":"Bim","magaza_resim_ad":"bim.png","magaza_adres":"Barbaros Mah.","magaza_tel":"02245555555","kategori":{"kategori_id":"2","kategori_ad":"Market"}},{"magaza_id":"6","magaza_ad":"Carrefour","magaza_resim_ad":"carrefour.png","magaza_adres":"Bursa","magaza_tel":"0224666666","kategori":{"kategori_id":"2","kategori_ad":"Market"}}],"success":1}';

    var jsonVeri = jsonDecode(veri);
    var magazalarCevap = MagazalarCevap.fromJson(jsonVeri);

    var success = magazalarCevap.success;
    var magazalar = magazalarCevap.magazalar;

    print("Başarı : $success");
    print("****************************");

    for (var m in magazalar) {
      print("---------------------------");
      print("Mağaza id : ${m.magaza_id}");
      print("Mağaza adı : ${m.magaza_ad}");
      print("Mağaza resim adı : ${m.magaza_resim_ad}");
      print("Mağaza tel : ${m.magaza_tel}");
      print("Mağaza kategori : ${m.kategori.kategori_ad}");
    }
  }

  void filmlerParse(){
    String veri = '{"filmler":[{"film_id":"1","film_ad":"Interstellar","film_yil":"2015","film_resim":"interstellar.png","kategori":{"kategori_id":"4","kategori_ad":"Bilim Kurgu"},"yonetmen":{"yonetmen_id":"1","yonetmen_ad":"Christopher Nolan"}},{"film_id":"2","film_ad":"Inception","film_yil":"2010","film_resim":"inception.png","kategori":{"kategori_id":"4","kategori_ad":"Bilim Kurgu"},"yonetmen":{"yonetmen_id":"1","yonetmen_ad":"Christopher Nolan"}},{"film_id":"3","film_ad":"The Pianist","film_yil":"2002","film_resim":"thepianist.png","kategori":{"kategori_id":"3","kategori_ad":"Drama"},"yonetmen":{"yonetmen_id":"4","yonetmen_ad":"Roman Polanski"}},{"film_id":"4","film_ad":"Bir Zamanlar Anadoluda","film_yil":"2011","film_resim":"birzamanlaranadoluda.png","kategori":{"kategori_id":"3","kategori_ad":"Drama"},"yonetmen":{"yonetmen_id":"3","yonetmen_ad":"Nuri Bilge Ceylan"}},{"film_id":"5","film_ad":"The Hateful Eight","film_yil":"2015","film_resim":"thehatefuleight.png","kategori":{"kategori_id":"1","kategori_ad":"Aksiyon"},"yonetmen":{"yonetmen_id":"2","yonetmen_ad":"Quentin Tarantino"}},{"film_id":"18","film_ad":"Django","film_yil":"2013","film_resim":"django.png","kategori":{"kategori_id":"1","kategori_ad":"Aksiyon"},"yonetmen":{"yonetmen_id":"2","yonetmen_ad":"Quentin Tarantino"}}],"success":1}';

    var jsonVeri = jsonDecode(veri);
    var filmlerCevap  = FilmlerCevap.fromJson(jsonVeri);

    var success = filmlerCevap.success;
    var filmler = filmlerCevap.filmler;

    print("Başarı : $success");
    print("****************************");

    for (var f in filmler) {
      print("---------------------------");
      print("Film id : ${f.film_id}");
      print("Film adı : ${f.film_ad}");
      print("Film yıl : ${f.film_yil}");
      print("Film resim adı : ${f.film_resim}");
      print("Film kategori : ${f.kategori.kategori_ad}");
      print("Film yönetmen : ${f.yonetmen.yonetmen_ad}");
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("JSON Parse Kullanımı"),
      ),
      body: const Center(),
    );
  }


}
