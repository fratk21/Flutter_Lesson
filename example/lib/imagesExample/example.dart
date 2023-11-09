import 'package:flutter/material.dart';

// StatelessWidget sınıfını genişleten bir widget sınıfı
class ImagesExample extends StatelessWidget {
  const ImagesExample({Key? key}) : super(key: key);

  // Widget'ın yapılandırılması
  @override
  Widget build(BuildContext context) {
    // SafeArea ile çerçeveye güvenli bir bölge ekleyerek ekran kenarlarındaki içerikleri koruma
    return SafeArea(
      child: Scaffold(
        // Scaffold, temel materyal tasarım dilindeki sayfa yapı taşıdır
        body: SingleChildScrollView(
          // SingleChildScrollView, çocuklarının aşırı taşmasını önleyen bir widget'tir
          child: Column(
            // Dikey yönlü sıralama
            children: [
              // Metin içeren bir Container
              Text(
                "Container",
                style: TextStyle(fontSize: 30),
              ),
              // Bir çizgi ile ayrılmış metin
              Divider(),
              // Asset'ten resim içeren bir Container
              Container(
                child: Image.asset("assets/images/profile.jpg"),
              ),
              // Boşluk ekleyerek diğer elemana yer açın
              const SizedBox(
                height: 20,
              ),
              // Network'ten resim içeren bir Container
              Container(
                child: Image.network(
                    "https://images.pexels.com/photos/220453/pexels-photo-220453.jpeg?cs=srgb&dl=pexels-pixabay-220453.jpg&fm=jpg"),
              ),
              // Boşluk ekleyerek diğer elemana yer açın
              const SizedBox(
                height: 20,
              ),
              // Asset'ten resim içeren bir Container, belirli bir yükseklik ve dekorasyon ile
              Container(
                height: 200,
                decoration: BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage("assets/images/profile.jpg"))),
              ),
              // Boşluk ekleyerek diğer elemana yer açın
              const SizedBox(
                height: 20,
              ),
              // Asset'ten resim içeren bir Container, belirli boyut, kenar yarıçapı ve gölge ile
              Container(
                width: 200.0,
                height: 200.0,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12.0),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.5),
                      spreadRadius: 5,
                      blurRadius: 7,
                      offset: Offset(0, 3),
                    ),
                  ],
                  image: DecorationImage(
                    image: AssetImage("assets/images/profile.jpg"),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              // Boşluk ekleyerek diğer elemana yer açın
              const SizedBox(
                height: 20,
              ),
              // Network'ten resim içeren bir Container, belirli boyut, kenar yarıçapı ve gölge ile
              Container(
                width: 200.0,
                height: 200.0,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12.0),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.5),
                      spreadRadius: 5,
                      blurRadius: 7,
                      offset: Offset(0, 3),
                    ),
                  ],
                  image: DecorationImage(
                    image: NetworkImage(
                        "https://images.pexels.com/photos/220453/pexels-photo-220453.jpeg?cs=srgb&dl=pexels-pixabay-220453.jpg&fm=jpg"),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              // Boşluk ekleyerek diğer elemana yer açın
              const SizedBox(
                height: 20,
              ),
              // Metin içeren bir Container
              Text(
                "Image.asset",
                style: TextStyle(fontSize: 30),
              ),
              // Bir çizgi ile ayrılmış metin
              Divider(),
              // Asset'ten resim içeren bir Image widget'ı
              Image.asset("assets/images/profile.jpg"),
              // Boşluk ekleyerek diğer elemana yer açın
              const SizedBox(
                height: 20,
              ),
              // Metin içeren bir Container
              Text(
                "Circle Avatar",
                style: TextStyle(fontSize: 30),
              ),
              // Bir çizgi ile ayrılmış metin
              Divider(),
              // Stack içinde çember içine yerleştirilmiş resim
              Stack(
                alignment: Alignment.center,
                children: [
                  // Çember içine alınmış resim
                  Container(
                    width: 200.0,
                    height: 200.0,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(100.0),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black.withOpacity(0.5),
                          spreadRadius: 2,
                          blurRadius: 20,
                          offset: Offset(0, 3),
                        ),
                      ],
                    ),
                  ),
                  // CircleAvatar içinde resim
                  CircleAvatar(
                    radius: 80.0,
                    backgroundColor: Colors.transparent,
                    backgroundImage: AssetImage(
                      "assets/images/profile.jpg", // Örnek bir resim URL'si
                    ),
                  ),
                ],
              ),
              // CircleAvatar içinde resim
              CircleAvatar(
                radius: 80,
                child: Image.asset(
                  "assets/images/profile.jpg",
                  fit: BoxFit.fill,
                ),
              ),
              // Boşluk ekleyerek diğer elemana yer açın
              const SizedBox(
                height: 20,
              ),
              // CircleAvatar içinde resim
              CircleAvatar(
                radius: 80,
                backgroundImage: AssetImage("assets/images/profile.jpg"),
              ),
              // Metin içeren bir Container
              Text(
                "Card",
                style: TextStyle(fontSize: 30),
              ),
              // Bir çizgi ile ayrılmış metin
              Divider(),
              // Card içinde resim
              Card(
                child: Image.asset(
                  "assets/images/profile.jpg",
                  fit: BoxFit.fill,
                ),
              ),
              // Yükseltme ve şekillendirme ile Card içinde resim
              Card(
                elevation: 10.0,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(12.0),
                ),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(12.0),
                  child: Image.asset(
                    "assets/images/profile.jpg",
                    fit: BoxFit.fill,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
