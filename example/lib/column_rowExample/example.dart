import 'package:flutter/material.dart';

// StatefulWidget sınıfını genişleten bir widget sınıfı
class ColumnRowExample extends StatefulWidget {
  const ColumnRowExample({Key? key}) : super(key: key);

  @override
  State<ColumnRowExample> createState() => _ColumnRowExampleState();
}

// State sınıfını genişleten bir alt sınıf
class _ColumnRowExampleState extends State<ColumnRowExample> {
  @override
  Widget build(BuildContext context) {
    // Scaffold, temel materyal tasarım dilindeki sayfa yapı taşıdır
    return Scaffold(
      // Sayfa içinde yatay kaydırma sağlayan bir PageView widget'ı
      body: PageView(
        children: [
          // İlk sayfa: Dikey sıralama içeren bir Column widget'ı
          Column(
            // Dikeyde orta hizalama
            mainAxisAlignment: MainAxisAlignment.center,
            // Yatayda orta hizalama
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              // Metin içeren bir Text widget'ı
              Text("Sağa Kaydır"),
              // Dikeyde orta hizalama ve yatayda orta hizalama içeren bir Row widget'ı
              Row(
                // Yatayda orta hizalama
                mainAxisAlignment: MainAxisAlignment.center,
                // Dikeyde orta hizalama
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  // Kırmızı bir Container
                  Container(
                    width: 100.0,
                    height: 100.0,
                    color: Colors.red,
                  ),
                  // Yeşil bir Container
                  Container(
                    width: 100.0,
                    height: 100.0,
                    color: Colors.green,
                  ),
                  // Mavi bir Container
                  Container(
                    width: 100.0,
                    height: 100.0,
                    color: Colors.blue,
                  ),
                ],
              ),
              // Kırmızı bir Container
              Container(
                width: 100.0,
                height: 100.0,
                color: Colors.red,
              ),
              // Yeşil bir Container
              Container(
                width: 100.0,
                height: 100.0,
                color: Colors.green,
              ),
              // Mavi bir Container
              Container(
                width: 100.0,
                height: 100.0,
                color: Colors.blue,
              ),
              // Dikeyde orta hizalama ve yatayda orta hizalama içeren bir Row widget'ı
              Row(
                // Yatayda orta hizalama
                mainAxisAlignment: MainAxisAlignment.center,
                // Dikeyde orta hizalama
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  // Kırmızı bir Container
                  Container(
                    width: 100.0,
                    height: 100.0,
                    color: Colors.red,
                  ),
                  // Yeşil bir Container
                  Container(
                    width: 100.0,
                    height: 100.0,
                    color: Colors.green,
                  ),
                  // Mavi bir Container
                  Container(
                    width: 100.0,
                    height: 100.0,
                    color: Colors.blue,
                  ),
                ],
              ),
            ],
          ),
          // İkinci sayfa: Dikey sıralama içeren bir Column widget'ı
          Column(
            // Dikeyde orta hizalama
            mainAxisAlignment: MainAxisAlignment.center,
            // Yatayda orta hizalama
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              // Metin içeren bir Text widget'ı
              Text("Sola Kaydır"),
              // Dikeyde orta hizalama ve yatayda orta hizalama içeren bir Row widget'ı
              Row(
                // Yatayda orta hizalama
                mainAxisAlignment: MainAxisAlignment.center,
                // Dikeyde orta hizalama
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  // Profil resmi içeren bir CircleAvatar
                  CircleAvatar(
                    radius: 60,
                    backgroundImage: AssetImage("assets/images/profile.jpg"),
                  ),
                  // Yeşil bir Container
                  Container(
                    width: 100.0,
                    height: 100.0,
                    color: Colors.green,
                  ),
                  // Kart içinde resim içeren bir SizedBox
                  SizedBox(
                    height: 100,
                    width: 100,
                    child: Card(
                      elevation: 10.0,
                      child: ClipRRect(
                        child: Image.asset(
                          "assets/images/profile.jpg",
                          fit: BoxFit.fill,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              // Kırmızı bir Container
              Container(
                width: 100.0,
                height: 100.0,
                color: Colors.red,
              ),
              // Yeşil bir Container
              Container(
                width: 100.0,
                height: 100.0,
                color: Colors.green,
                // İçerisinde metin içeren bir Center widget'ı
                child: Center(
                  child: Text(
                    "Text",
                    style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                      fontSize: 18.0,
                    ),
                  ),
                ),
              ),
              // Mavi bir Container
              Container(
                width: 100.0,
                height: 100.0,
                color: Colors.blue,
              ),
              // Dikeyde orta hizalama ve yatayda orta hizalama içeren bir Row widget'ı
              Row(
                // Yatayda orta hizalama
                mainAxisAlignment: MainAxisAlignment.center,
                // Dikeyde orta hizalama
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  // Kırmızı bir Container
                  Container(
                    width: 100.0,
                    height: 100.0,
                    color: Colors.red,
                  ),
                  // Yeşil bir Container, içinde resim içeren bir CircleAvatar
                  Container(
                    width: 100.0,
                    height: 100.0,
                    color: Colors.green,
                    child: CircleAvatar(
                      radius: 30,
                      backgroundImage: AssetImage("assets/images/profile.jpg"),
                    ),
                  ),
                  // Mavi bir Container
                  Container(
                    width: 100.0,
                    height: 100.0,
                    color: Colors.blue,
                  ),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}
