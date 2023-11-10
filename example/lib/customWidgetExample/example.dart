import 'package:example/customWidgets/ElevatedButton/buttonmodel.dart';
import 'package:example/customWidgets/Textfield/textfieldmodel.dart';
import 'package:example/customWidgets/appbar/appbar.dart';
import 'package:example/customWidgets/sizedbox/sizedbox.dart';
import 'package:flutter/material.dart';

// CustomWidgetExapmle adında özel bir widget sınıfı oluşturuldu
class CustomWidgetExapmle extends StatefulWidget {
  const CustomWidgetExapmle({super.key});

  // State nesnesi oluşturulması için gerekli fonksiyon
  @override
  State<CustomWidgetExapmle> createState() => _CustomWidgetExapmleState();
}

// _CustomWidgetExapmleState adında durum sınıfı oluşturuldu
class _CustomWidgetExapmleState extends State<CustomWidgetExapmle> {
  // Kullanıcı adı ve şifre için kontrolcüler oluşturuldu
  TextEditingController _controlleruser = TextEditingController();
  TextEditingController _controllerpass = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        extendBody: true,
        // Özel appbar kullanıldı
        appBar: CustomAppBar(
          backgroundColor: Colors.transparent,
          elevation: 0,
          centerTitle: true,
          title: Text(
            "Kullanıcı girişi ",
          ),
          automaticallyImplyLeading: false,
        ),
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Center(
              child: Column(
                children: [
                  // Profil resmi için CircleAvatar kullanıldı
                  CircleAvatar(
                    radius: 80.0,
                    backgroundColor: Colors.transparent,
                    backgroundImage: AssetImage(
                      "assets/images/profile.jpg",
                    ),
                  ),
                  sizedBoxH(20),
                  // Kullanıcı adı girişi için özel TextField kullanıldı
                  MyTextField(
                      line: 1,
                      controller: _controlleruser,
                      hintText: "username",
                      obscureText: false,
                      prefixIcon: Icon(Icons.person)),
                  sizedBoxH(20),
                  // Şifre girişi için özel TextField kullanıldı
                  MyTextField(
                      line: 1,
                      controller: _controllerpass,
                      hintText: "password",
                      obscureText: true,
                      prefixIcon: Icon(Icons.lock)),
                  sizedBoxH(20),
                  // Giriş yap butonu için özel ElevatedButton kullanıldı
                  customButton(
                    context: context,
                    text: "Giriş Yap",
                    onPressed: () {},
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
