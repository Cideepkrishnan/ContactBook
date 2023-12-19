import 'package:hive/hive.dart';

part 'person.g.dart';

@HiveType(typeId: 1)
class Person {
  Person({
    required this.name,
    required this.number,
  });
  @HiveField(0)
  String name;

  @HiveField(1)
  int number;
}
