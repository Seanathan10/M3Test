import 'package:flutter/material.dart';
import 'package:m3test/colourpicker.dart';

class Tab3 extends StatelessWidget {
  const Tab3({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text("Colour editing tab"),
      ),
      body: const Column(
        children: [
          Center(child: Icon(Icons.directions_bike)),
          Center(child: Text("Tertiary tab")),
          /*
          Center(
            child: DatePickerDialog(
              initialDate: DateTime.now(),
              firstDate: DateTime(2018),
              lastDate: DateTime(2030),
            ),
          ),
          */
          Center(
            /*
              cardColor: Colors.blue.shade600,
              primarySwatch: Colors.red,
              accentColor: Colors.amberAccent,
              backgroundColor: Colors.cyan,
              errorColor: Colors.indigo,
            */
            child: ColourPicker(
              property: "testgeas",
            ),
          ),
        ],
      ),
    );
  }
}
