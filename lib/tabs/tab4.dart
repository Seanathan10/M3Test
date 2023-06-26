import 'package:flutter/material.dart';

class Tab4 extends StatefulWidget {
  late Color backgroundColor = Colors.transparent;
  late Color appBarBackgroundColor;
  Tab4({Key? key, required this.backgroundColor, required this.appBarBackgroundColor}) : super(key: key);

  @override
  State<Tab4> createState() => _Tab4State();
}

class _Tab4State extends State<Tab4> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: widget.backgroundColor,
      appBar: AppBar(
        backgroundColor: widget.appBarBackgroundColor,
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
