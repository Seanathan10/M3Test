import 'package:flutter/material.dart';

class Tab3 extends StatelessWidget {
  const Tab3({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text("Bicycle tab"),
      ),
      body: const Column(
        children: [
          Center(child: Icon(Icons.directions_bike)),
          Center(child: Text("Tertiary tab"))
        ],
      ),
    );
  }
}
