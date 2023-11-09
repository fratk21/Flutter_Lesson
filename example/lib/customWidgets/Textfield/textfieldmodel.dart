import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hexcolor/hexcolor.dart';

// MyTextField adında özel bir widget sınıfı oluşturuldu
class MyTextField extends StatefulWidget {
  // Widget'ın gereken parametreleri
  final controller; // TextField kontrolcüsü
  final String hintText; // TextField içine yerleştirilen metin
  final bool
      obscureText; // TextField'ın metni gizli olup olmadığını belirten bir bayrak
  final Icon prefixIcon; // TextField'ın başındaki ikon
  final Function()?
      onChanged; // TextField'ta bir değişiklik olduğunda çağrılacak fonksiyon
  final double? height; // TextField'ın yüksekliği
  final int? line; // TextField'ın maksimum satır sayısı

  // MyTextField sınıfının yapıcı fonksiyonu
  const MyTextField({
    super.key,
    required this.controller,
    required this.hintText,
    required this.obscureText,
    required this.prefixIcon,
    this.line,
    this.height,
    this.onChanged,
  });

  // State nesnesi oluşturulması için gerekli fonksiyon
  @override
  _MyTextFieldState createState() => _MyTextFieldState();
}

// _MyTextFieldState adında durum sınıfı oluşturuldu
class _MyTextFieldState extends State<MyTextField> {
  bool isObscure = true; // Metnin gizli olup olmadığını kontrol eden bayrak

  @override
  void initState() {
    super.initState();
    isObscure = widget
        .obscureText; // İlk durumda, gizli metin durumunu widget'ın özelliğinden al
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      // TextField'ı saran bir konteyner
      height: widget.height, // Konteynerin yüksekliği
      decoration: BoxDecoration(
        color:
            HexColor("#f0f3f1").withOpacity(0.8), // Konteynerin arka plan rengi
        borderRadius: BorderRadius.circular(10), // Konteynerin köşe yuvarlama
      ),
      child: TextField(
        maxLines: widget.line, // TextField'ın maksimum satır sayısı
        controller: widget.controller, // TextField kontrolcüsü
        obscureText: isObscure, // TextField'ın metni gizli mi?
        cursorColor: HexColor("#4f4f4f"), // Cursor (imleç) rengi
        decoration: InputDecoration(
          hintText: widget.hintText, // TextField içine yerleştirilen metin
          contentPadding:
              const EdgeInsets.fromLTRB(20, 20, 20, 20), // İç içe boşluk
          hintStyle: GoogleFonts.poppins(
            fontSize: 15,
            color: HexColor("#8d8d8d"),
          ),
          border: InputBorder.none, // Kenarlık olmadan
          prefixIcon: widget.prefixIcon, // Başındaki ikon
          prefixIconColor: HexColor("#4f4f4f"), // Başındaki ikon rengi
          suffixIcon: widget.obscureText
              ? GestureDetector(
                  onTap: () {
                    // Göz ikonuna tıklandığında gerçekleşecek olay
                    setState(() {
                      isObscure = !isObscure; // Metni gizli yapma/düzeltme
                    });
                  },
                  child: Icon(
                    isObscure ? Icons.visibility_off : Icons.visibility,
                    color: HexColor("#4f4f4f"),
                  ),
                )
              : null, // Gizli metin değilse, ek bir ikon gösterme
        ),
      ),
    );
  }
}
