import 'package:flutter/material.dart';

class Route2Screen extends StatelessWidget {
   
  const Route2Screen({Key? key}) : super(key: key);
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Route screen 2"),
      ),
      body: const Center(
         child: Text('Route2Screen'),
      ),
    );
  }
}