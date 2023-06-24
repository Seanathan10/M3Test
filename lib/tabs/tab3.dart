import 'package:flutter/material.dart';
import 'package:m3test/colourpicker.dart';

class Tab3 extends StatefulWidget {
  Tab3({super.key});

  @override
  State<Tab3> createState() => _Tab3State();
}

class _Tab3State extends State<Tab3> {
  late Color backgroundColor = Colors.transparent;
  late Color cardColor;

  void handleBackgroundColourSelected(Color color) {
    setState(() {
      backgroundColor = color;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundColor,
      appBar: AppBar(
        centerTitle: true,
        title: const Text("Colour editing tab"),
      ),
      body: Column(
        children: [
          const Center(child: Icon(Icons.directions_bike)),
          const Center(child: Text("Tertiary tab")),
          Center(
            /*
              cardColor: Colors.blue.shade600,
              primarySwatch: Colors.red,
              accentColor: Colors.amberAccent,
              errorColor: Colors.indigo,
            */
            child: ColourPicker(
              property: "Background",
              onColourSelected: handleBackgroundColourSelected,
            ),
          ),
        ],
      ),
    );
  }
}

