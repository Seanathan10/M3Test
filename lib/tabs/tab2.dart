import 'package:flutter/material.dart';
import 'package:m3test/customdialogue.dart';
import 'package:m3test/checkboxes.dart';

class Tab2 extends StatefulWidget {
  const Tab2({super.key});

  @override
  State<Tab2> createState() => _Tab2State();
}

class _Tab2State extends State<Tab2> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text("Metro tab"),
      ),
      body: const Column(
        children: [
          Center(child: Icon(Icons.directions_transit)),
          Center(child: Text("Secondary tab")),
          Center(child: ColourModeCheckbox()),
          Center(child: ColourModeCheckbox()),
          Center(child: ColourModeCheckbox()),
          Center(child: ColourModeCheckbox()),
          Center(child: CustomDialogue( buttonText: "Custom Dialogue Box" ))
        ],
      ),
    );
  }
}
