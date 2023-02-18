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
  List<String> name = ['hello', 'you', 'are', 'awesome'];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('model sample')),
      body: ListView.builder(
        itemBuilder: (context, index) {
          return ListTile(
            title: Text(name[index]),
            trailing: IconButton(
                onPressed: () {
                  name.removeAt(index);
                  setState(() {});
                },
                icon: Icon(Icons.delete)),
          );
        },
        itemCount: name.length,
      ),
    );
  }
}
// class Name {

// }