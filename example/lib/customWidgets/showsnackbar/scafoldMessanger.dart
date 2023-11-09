import 'package:flutter/material.dart';

// SnackBar'ı gösteren özel bir fonksiyon
void showSnackBar(BuildContext context, Color backgroundColor, String text) {
  // SnackBar'ın oluşturulması
  final snackBar = SnackBar(
    content: Text(text), // SnackBar içindeki metin
    backgroundColor: backgroundColor, // SnackBar'ın arka plan rengi
    behavior: SnackBarBehavior
        .floating, // SnackBar davranışı (floating olarak belirlenmiş)
    duration: Duration(
        milliseconds: 10000), // SnackBar'ın görüntülenme süresi (10 saniye)
    action: SnackBarAction(
      label: 'Kapat', // Eylem etiketi
      disabledTextColor: Colors.white, // Devre dışı bırakıldığında metin rengi
      textColor: Colors.white, // Eylem metin rengi
      onPressed: () {
        // Eylem butonuna tıklandığında gerçekleşecek olaylar
        ScaffoldMessenger.of(context).removeCurrentSnackBar();
      },
    ),
  );
  // SnackBar'ın gösterilmesi
  ScaffoldMessenger.of(context).showSnackBar(snackBar);
}
