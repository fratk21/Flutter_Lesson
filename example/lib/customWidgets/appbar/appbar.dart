import 'package:flutter/material.dart';

// CustomAppBar, AppBar sınıfını genişleten özel bir sınıftır
class CustomAppBar extends AppBar {
  // CustomAppBar'ın yapılandırıcısı
  CustomAppBar({
    Key? key,
    Widget? title,
    Color? backgroundColor,
    Widget? leading,
    List<Widget>? actions,
    bool? centerTitle,
    double elevation = 0.0,
    double height = kToolbarHeight,
    bool automaticallyImplyLeading = true,
    PreferredSizeWidget? bottom,
  }) : super(
          // AppBar'ın ana yapılandırıcısına parametreleri ileterek özelleştirebiliriz
          key: key,
          title: title, // AppBar'ın başlığı
          backgroundColor:
              backgroundColor ?? Colors.blue, // AppBar'ın arka plan rengi
          leading: leading, // Sol üstteki widget (genellikle bir geri butonu)
          actions: actions, // Sağ üstteki ek eylem widget'ları
          centerTitle: centerTitle ?? true, // Başlık metni ortalanacak mı?
          elevation: elevation, // AppBar'ın yüksekliği
          toolbarHeight: height, // AppBar'ın yüksekliği
          automaticallyImplyLeading:
              automaticallyImplyLeading, // Geri butonu otomatik olarak eklenmeli mi?
          bottom: bottom, // AppBar'ın altındaki widget (genellikle bir TabBar)
        );
}
