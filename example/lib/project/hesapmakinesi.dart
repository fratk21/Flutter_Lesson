import 'package:flutter/material.dart';
import 'package:math_expressions/math_expressions.dart';

// ignore: camel_case_types
class hesapmakinesi extends StatefulWidget {
  const hesapmakinesi({Key? key}) : super(key: key);

  @override
  State<hesapmakinesi> createState() => _hesapmakinesiState();
}

// ignore: camel_case_types
class _hesapmakinesiState extends State<hesapmakinesi> {
  String ara = '';
  String son = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Hesap Makinesi"),
        titleTextStyle: TextStyle(fontSize: 25),
      ),
      backgroundColor: Colors.white,
      body: body(),
    );
  }

  Widget body() {
    return SafeArea(
      child: Column(
        children: [
          Expanded(
            flex: 35,
            child: Container(
              width: double.infinity,
              padding: const EdgeInsets.symmetric(horizontal: 10),
              decoration: const BoxDecoration(
                color: Colors.white,
              ),
              child: texts(),
            ),
          ),
          Expanded(
            flex: 65,
            child: Container(
                padding: const EdgeInsets.all(5),
                decoration: const BoxDecoration(
                  color: Colors.white,
                ),
                child: Column(
                  children: [
                    buttons('C', 'AC', '(', ')'),
                    buttons('7', '8', '9', '/'),
                    buttons('4', '5', '6', 'x'),
                    buttons('1', '2', '3', '+'),
                    buttons('.', '0', '=', '-'),
                  ],
                )),
          ),
        ],
      ),
    );
  }

  Widget texts() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.end,
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        Text(
          ara,
          style: const TextStyle(color: Colors.black, fontSize: 26),
        ),
        const SizedBox(height: 10),
        Text(
          son,
          style: const TextStyle(
              color: Colors.red, fontSize: 36, fontWeight: FontWeight.bold),
        ),
        const SizedBox(height: 20),
      ],
    );
  }

  Widget buttons(
      String buttons1, String buttons2, String buttons3, String buttons4) {
    return Expanded(
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Expanded(
            child: Padding(
              padding: EdgeInsets.all(10),
              child: TextButton(
                onPressed: () => hesaplama(buttons1),
                child: Text(buttons1),
                style: TextButton.styleFrom(
                  backgroundColor: Colors.orange,
                  foregroundColor: Colors.white,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(26),
                  ),
                  textStyle: const TextStyle(
                    fontSize: 22,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
          ),
          Expanded(
            child: Padding(
              padding: EdgeInsets.all(10),
              child: TextButton(
                onPressed: () => hesaplama(buttons2),
                child: Text(buttons2),
                style: TextButton.styleFrom(
                  backgroundColor: Colors.yellow,
                  foregroundColor: Colors.white,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(26),
                  ),
                  textStyle: const TextStyle(
                    fontSize: 22,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
          ),
          Expanded(
            child: Padding(
              padding: EdgeInsets.all(10),
              child: TextButton(
                onPressed: () => hesaplama(buttons3),
                child: Text(buttons3),
                style: TextButton.styleFrom(
                  backgroundColor: Colors.red,
                  foregroundColor: Colors.white,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(26),
                  ),
                  textStyle: const TextStyle(
                    fontSize: 22,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
          ),
          Expanded(
            child: Padding(
              padding: EdgeInsets.all(10),
              child: TextButton(
                onPressed: () => hesaplama(buttons4),
                child: Text(buttons4),
                style: TextButton.styleFrom(
                  backgroundColor: Colors.redAccent,
                  foregroundColor: Colors.white,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(26),
                  ),
                  textStyle: const TextStyle(
                    fontSize: 22,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  void hesaplama(String x) {
    setState(() {
      List<String> temizlik = ['C', 'AC', '='];

      if (!temizlik.contains(x) && son != '') {
        ara = son;
        son = '';
        ara += x;
      } else if (!temizlik.contains(x)) {
        ara += x;
      } else if (x == 'AC') {
        ara = ara.substring(0, ara.length - 1);
      } else if (x == 'C') {
        ara = '';
        son = '';
      } else {
        Parser parser = Parser();
        Expression e = parser.parse(ara.replaceAll('x', '*'));
        ContextModel cm = ContextModel();
        son = e.evaluate(EvaluationType.REAL, cm).toString();
      }
    });
  }
}
