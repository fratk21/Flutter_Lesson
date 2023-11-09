import 'package:flutter/material.dart';

// StatelessWidget sınıfını genişleten bir widget sınıfı
class AppbarExample extends StatelessWidget {
  const AppbarExample({Key? key}) : super(key: key);

  // Widget'ın yapılandırılması
  @override
  Widget build(BuildContext context) {
    // Scaffold, temel materyal tasarım dilindeki sayfa yapı taşıdır
    return Scaffold(
      // Sayfanın appBar özelliği
      appBar: AppBar(
        // Sol üstteki menü butonu
        leading: IconButton(
          // Menü ikonu
          icon: Icon(Icons.menu),
          onPressed: () {
            // Menü butonuna tıklandığında gerçekleşecek olaylar
            print('Menü butonuna tıklandı');
          },
        ),
        // AppBar'ın başlık metni
        title: Text('Özellikli AppBar'),
        // Sağ üstteki eylem butonları
        actions: [
          // Arama ikonu
          IconButton(
            icon: Icon(Icons.search),
            onPressed: () {
              // Arama butonuna tıklandığında gerçekleşecek olaylar
              print('Arama butonuna tıklandı');
            },
          ),
          // Ayarlar ikonu
          IconButton(
            icon: Icon(Icons.settings),
            onPressed: () {
              // Ayarlar butonuna tıklandığında gerçekleşecek olaylar
              print('Ayarlar butonuna tıklandı');
            },
          ),
        ],
        // AppBar'ın arka plan rengi
        backgroundColor: Colors.blue,
        // AppBar'ın yüksekliği
        elevation: 4.0,
        // Başlık metni ortalanacak mı?
        centerTitle: true,
        // AppBar'daki ikon renkleri
        iconTheme: IconThemeData(
          color: Colors.white,
        ),
      ),
    );
  }
}
