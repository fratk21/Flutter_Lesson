import 'package:example/project/listview/model/examplemodel.dart';
import 'package:flutter/material.dart';

class exampleview extends StatefulWidget {
  const exampleview({super.key});

  @override
  State<exampleview> createState() => _exampleviewState();
}

class person {
  late String name;
  late String surname;
  late String id;
  late int money;

  person(
      {required this.id,
      required this.name,
      required this.surname,
      required this.money});
}

class _exampleviewState extends State<exampleview> {
  //ornek veritabanı
  final List<person> data = [
    person(id: "1", name: "ahmet", surname: "kara", money: 100),
    person(id: "2", name: "ahmet", surname: "kara", money: 400),
    person(id: "3", name: "ahmet", surname: "kara", money: 200),
    person(id: "4", name: "ahmet", surname: "kara", money: 500),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: ListView.builder(
        itemCount: data.length,
        itemBuilder: (context, index) {
          return model(data[index].id, data[index].name, data[index].surname,
              context, data[index].money);
        },
      ),
    );
  }
}
