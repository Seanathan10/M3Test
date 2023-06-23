import 'package:flutter/material.dart';

class Tab4 extends StatelessWidget {
  const Tab4({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text("Unused tab"),
      ),
      body: const Column(
        children: [
          Center(child: Icon(Icons.qr_code)),
          Center(child: Text("Quaternary tab"))
        ],
      ),
    );
  }
}
