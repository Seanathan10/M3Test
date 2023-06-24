import 'package:flutter/material.dart';

class Tab4 extends StatefulWidget {
  late Color backgroundColor = Colors.transparent;
  Tab4({Key? key, required this.backgroundColor}) : super(key: key);

  @override
  State<Tab4> createState() => _Tab4State();
}

class _Tab4State extends State<Tab4> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: widget.backgroundColor,
      appBar: AppBar(
        centerTitle: true,
        title: const Text("Interesting tab icon"),
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
