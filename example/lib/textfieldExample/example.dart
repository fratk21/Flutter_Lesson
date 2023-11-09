import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class TextfieldExample extends StatefulWidget {
  const TextfieldExample({super.key});

  @override
  State<TextfieldExample> createState() => _TextfieldExampleState();
}

class _TextfieldExampleState extends State<TextfieldExample> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Temel TextField
            TextField(
              decoration: InputDecoration(
                labelText: 'Adınız',
                hintText: 'Lütfen adınızı girin',
                prefixIcon: Icon(Icons.person),
                border: OutlineInputBorder(),
              ),
              onChanged: (value) {
                // TextField içeriği değiştiğinde yapılacak işlemler
                print('Adınız: $value');
              },
            ),
            SizedBox(
                height: 16.0), // Boşluk ekleyerek diğer TextField'a yer açın

            // Şifre Girişi için TextField
            TextField(
              obscureText: true,
              decoration: InputDecoration(
                labelText: 'Şifre',
                hintText: 'Lütfen şifrenizi girin',
                prefixIcon: Icon(Icons.lock),
                suffixIcon: Icon(Icons.visibility),
                border: OutlineInputBorder(),
              ),
              onChanged: (value) {
                // Şifre TextField içeriği değiştiğinde yapılacak işlemler
                print('Şifre: $value');
              },
            ),
            SizedBox(height: 16.0),

            // Çok Satırlı Metin Girişi için TextField
            TextField(
              maxLines: 3,
              decoration: InputDecoration(
                labelText: 'Açıklama',
                hintText: 'Lütfen bir açıklama girin',
                border: OutlineInputBorder(),
              ),
              onChanged: (value) {
                // Çok satırlı TextField içeriği değiştiğinde yapılacak işlemler
                print('Açıklama: $value');
              },
            ),
            SizedBox(height: 16.0),

            // InputFormatter Kullanımı ile Numara Girişi için TextField
            TextField(
              keyboardType: TextInputType.number,
              inputFormatters: [FilteringTextInputFormatter.digitsOnly],
              decoration: InputDecoration(
                labelText: 'Telefon Numarası',
                hintText: 'Lütfen telefon numaranızı girin',
                prefixIcon: Icon(Icons.phone),
                border: OutlineInputBorder(),
              ),
              onChanged: (value) {
                // Numara TextField içeriği değiştiğinde yapılacak işlemler
                print('Telefon Numarası: $value');
              },
            ),
          ],
        ),
      ),
    );
  }
}
