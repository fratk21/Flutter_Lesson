import 'package:flutter/material.dart';

// StatefulWidget sınıfını genişleten bir widget sınıfı
class TextExample extends StatefulWidget {
  const TextExample({Key? key}) : super(key: key);

  @override
  State<TextExample> createState() => _TextExampleState();
}

// State sınıfını genişleten bir alt sınıf
class _TextExampleState extends State<TextExample> {
  // Kullanıcı adını temsil eden bir değişken
  String username = 'FRT';
  // İki tane sayı değişkeni
  int a = 1;
  int b = 2;

  // Widget'ın yapılandırılması
  @override
  Widget build(BuildContext context) {
    // SafeArea ile çerçeveye güvenli bir bölge ekleyerek ekran kenarlarındaki içerikleri koruma
    return SafeArea(
      child: Scaffold(
        // Scaffold, temel materyal tasarım dilindeki sayfa yapı taşıdır
        body: Center(
          // Merkezi hizalama
          child: Column(
            // Dikey yönlü sıralama, ana eksende ortala
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              // Kullanıcı adını içeren bir metin
              Text(
                '(Değişken örneği )Kullanıcı Adı: $username',
                style: TextStyle(fontSize: 16.0),
              ),
              // İki sayıyı toplamak ve sonucu içeren bir metin
              Text(
                '(Değişken örneği )Toplam: ${a + b}',
                style: TextStyle(fontSize: 16.0),
              ),
              // Özel font, büyüklük ve renkte metin
              Text(
                "Merhaba bu bir text örneğidir",
                style: TextStyle(
                  fontFamily: "BlackOpsOne",
                  fontSize: 30,
                  color: Colors.amber,
                ),
              ),
              // Zengin metin kullanımı (farklı stilleri içeren metin)
              RichText(
                text: TextSpan(
                  style: DefaultTextStyle.of(context).style,
                  children: [
                    TextSpan(
                      text: 'Merhaba, ',
                      style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                        fontSize: 18.0,
                      ),
                    ),
                    TextSpan(
                      text: 'bu ',
                      style: TextStyle(
                        color: Colors.blue,
                        fontStyle: FontStyle.italic,
                      ),
                    ),
                    TextSpan(
                      text: 'bir ',
                      style: TextStyle(
                        color: Colors.red,
                      ),
                    ),
                    TextSpan(
                      text: 'RichText örneğidir.',
                      style: TextStyle(
                        color: Colors.green,
                        decoration: TextDecoration.underline,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
