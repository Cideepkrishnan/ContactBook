import 'package:contactbook/home/home.dart';
import 'package:contactbook/person.dart';
import 'package:flutter/material.dart';
import 'package:hive_flutter/adapters.dart';

import 'boxs.dart';

void main() async {
  await Hive.initFlutter();

  Hive.registerAdapter(PersonAdapter());
  boxPersons = await Hive.openBox<Person>('PersonBox');

  runApp(myapp());
}

class myapp extends StatelessWidget {
  const myapp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomeScreen(),
    );
  }
}
