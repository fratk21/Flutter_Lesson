import 'package:example/customWidgets/ElevatedButton/buttonmodel.dart';
import 'package:example/customWidgets/Textfield/textfieldmodel.dart';
import 'package:example/customWidgets/showsnackbar/scafoldMessanger.dart';
import 'package:flutter/material.dart';

Widget model(
    String id, String name, String surname, BuildContext context, int money) {
  TextEditingController controller = TextEditingController();
  return InkWell(
      onTap: () {
        if (name == surname) {
          showSnackBar(context, Colors.green, "eşit");
        } else {
          showSnackBar(context, Colors.red, "eşit değil");
        }
      },
      child: Card(
        child: Column(
          children: [
            Text(name),
            Text(surname),
            Text(money.toString()),
            MyTextField(
                controller: controller,
                hintText: "hintText",
                obscureText: false,
                prefixIcon: Icon(Icons.person)),
            customButton(
              height: 0.03,
              context: context,
              onPressed: () {
                if (controller.text.isNotEmpty) {
                  money = money - int.parse(controller.text);
                } else {}
                showSnackBar(context, Colors.green, "$money");
              },
            )
          ],
        ),
      ));
}
