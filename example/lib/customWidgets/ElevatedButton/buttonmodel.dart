import 'package:flutter/material.dart';

// Özel bir düğme oluşturan fonksiyon
Widget customButton({
  double width = 0.8,
  double height = 0.08,
  Color backgroundColor = Colors.blue,
  String text = 'TIKLA',
  VoidCallback? onPressed,
  IconData? iconData,
  double borderRadius = 15.0,
  required BuildContext context,
}) {
  // Ekran genişliği
  double screenWidth = MediaQuery.of(context).size.width;
  // Ekran yüksekliği
  double screenHeight = MediaQuery.of(context).size.height;

  // SizedBox, belirtilen genişlik ve yükseklikte bir kutu oluşturur
  return SizedBox(
    width: screenWidth * width, // Kutunun genişliği
    height: screenHeight * height, // Kutunun yüksekliği
    child: ElevatedButton(
      onPressed: onPressed, // Düğmeye tıklandığında gerçekleşecek olaylar
      style: ElevatedButton.styleFrom(
        primary: backgroundColor, // Düğme arka plan rengi
        shape: RoundedRectangleBorder(
          borderRadius:
              BorderRadius.circular(borderRadius), // Düğme köşe yuvarlama
        ),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          // Eğer ikon belirtilmişse, bir Icon ekler
          if (iconData != null)
            Icon(
              iconData,
              size: 20,
              color: Colors.white,
            ),
          SizedBox(
            width: iconData != null ? screenWidth * 0.02 : 0,
          ),
          // Düğme metni
          Text(
            text,
            style: TextStyle(color: Colors.white), // Metin rengi
          ),
        ],
      ),
    ),
  );
}
