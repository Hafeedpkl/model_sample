import 'package:flutter/material.dart';
import 'package:model_sample/model/name_model.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  List<NamesModel> nameList = [
    NamesModel(
        name: 'hafeed',
        age: 15,
        profession: 'developer',
        details: Details(place: 'kerala')),
    NamesModel(
        name: 'muhammed',
        age: 40,
        profession: 'good person',
        details: Details(place: 'saudi')),
    NamesModel(
        name: 'john',
        age: 23,
        profession: 'techy',
        details: Details(place: 'america')),
    NamesModel(
        name: 'elon Musk',
        age: 34,
        profession: 'entreuprener',
        details: Details(place: 'canada'))
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('model sample')),
      body: ListView.builder(
        itemBuilder: (context, index) {
          if (nameList[index].details.toString() !=
              'null') //! null checking for details otherwise it being error
            return ListTile(
              title: Text(nameList[index].name.toString()),
              subtitle: Text(nameList[index].details!.place.toString()),
              trailing: IconButton(
                  onPressed: () {
                    nameList.removeAt(index);
                    setState(() {});
                  },
                  icon: const Icon(Icons.delete)),
            );
        },
        itemCount: nameList.length,
      ),
    );
  }
}
