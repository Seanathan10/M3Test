import 'package:flutter/material.dart';
import 'package:m3test/colourpicker.dart';

class Tab3 extends StatefulWidget {
  Color backgroundColor = Colors.transparent;
  late Color appBarBackgroundColor;
  
  final ValueChanged<Color> handleGlobalBackgroundColourChange;
  final ValueChanged<Color> handleGlobalAppBarColourChange;

  Tab3({Key? key, required this.backgroundColor, required this.handleGlobalBackgroundColourChange, required this.appBarBackgroundColor, required this.handleGlobalAppBarColourChange}) : super(key: key);

  @override
  State<Tab3> createState() => _Tab3State();
}

class _Tab3State extends State<Tab3> {
  late Color cardColor;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: widget.backgroundColor,
      appBar: AppBar(
        backgroundColor: widget.appBarBackgroundColor,
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
              onColourSelected: widget.handleGlobalBackgroundColourChange,
            ),
          ),
          Center(
            child: ColourPicker(
              property: "AppBar",
              onColourSelected: widget.handleGlobalAppBarColourChange,
            ),
            ),
        ],
      ),
    );
  }
}

