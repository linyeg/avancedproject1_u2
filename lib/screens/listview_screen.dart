import 'package:flutter/material.dart';

class ListViewScreen extends StatelessWidget {
   
  const ListViewScreen({Key? key}) : super(key: key);
  final fruits = const ["Apple", "Banana", "Orange", "Pineapple", "Strawberry"];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("ListView Screen 1")
      ),
      body: ListView(
        children: [
          ...fruits.map(
            (fruit) => ListTile(
              trailing: const Icon(Icons.arrow_forward_ios_outlined),
              title:Text(fruit),

            )
            ).toList()
        ]
         
      ),
    );
  }
}