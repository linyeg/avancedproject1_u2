import 'package:flutter/material.dart';

class Route1Screen extends StatelessWidget {
   
  const Route1Screen({Key? key}) : super(key: key);
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Route screen 1")
      ),
      body: const Center(
         child: Text('Route1Screen'),
      ),
    );
  }
}