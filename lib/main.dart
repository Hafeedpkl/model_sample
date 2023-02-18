import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: HomeScreen());
  }
}

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  List<Names> nameList = [
    Names(name: 'hafeed', age: 15, dob: DateTime(2021, 12, 23)),
    Names(name: 'muhammed', age: 40, dob: DateTime(1980, 4, 12)),
    Names(name: 'john', age: 23, dob: DateTime(2000, 4, 23)),
    Names(name: 'elon Musk', age: 34, dob: DateTime(1984, 10, 30))
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('model sample')),
      body: ListView.builder(
        itemBuilder: (context, index) {
          return ListTile(
            title: Text(nameList[index].name),
            subtitle: Text(nameList[index].age.toString()),
            trailing: IconButton(
                onPressed: () {
                  nameList.removeAt(index);
                  setState(() {});
                },
                icon: Icon(Icons.delete)),
          );
        },
        itemCount: nameList.length,
      ),
    );
  }
}

class Names {
  String name;
  int age;
  DateTime dob;
  Names({
    required this.name,
    required this.age,
    required this.dob,
  });
}
