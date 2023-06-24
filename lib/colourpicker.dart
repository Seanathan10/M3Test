import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

import 'dart:io' show Platform;

typedef ColourSelectedCallback = void Function(Color color);

class ColourPicker extends StatefulWidget {
  final String property;
  final ValueChanged<Color> onColourSelected;
  // final ColourSelectedCallback onColourSelected;

  const ColourPicker(
      {Key? key, required this.property, required this.onColourSelected})
      : super(key: key);

  @override
  State<ColourPicker> createState() => _ColourPickerState();
}

class _ColourPickerState extends State<ColourPicker> {
  Future<void> showDialogueCupertino() async {
    return showCupertinoDialog<void>(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          insetPadding: Platform.isIOS ? const EdgeInsets.fromLTRB( 0, 50, 0, 20 ) : const EdgeInsets.fromLTRB( 0, 10, 0, 5 ),
          title: Text("Select colour for ${widget.property}"),
          content: SingleChildScrollView(
            child: ListBody(
              children: <Widget>[
                ElevatedButton(
                  onPressed: () {
                    widget.onColourSelected( Colors.transparent );
                    Navigator.of(context).pop();
                  },
                  style: ElevatedButton.styleFrom(backgroundColor: Colors.transparent),
                  child: const Text("Transparent"),
                ),
                ElevatedButton(
                  onPressed: () {
                    widget.onColourSelected( Colors.white );
                    Navigator.of(context).pop();
                  },
                  style: ElevatedButton.styleFrom(backgroundColor: Colors.white),
                  child: const Text("White", style: TextStyle(color: Colors.black)),
                ),
                ElevatedButton(
                  onPressed: () {
                    widget.onColourSelected( Colors.red );
                    Navigator.of(context).pop();
                  },
                  style: ElevatedButton.styleFrom(backgroundColor: Colors.red),
                  child: const Text("Red", style: TextStyle(color: Colors.white)),
                ),
                ElevatedButton(
                  onPressed: () {
                    widget.onColourSelected( Colors.orange );
                    Navigator.of(context).pop();
                  },
                  style:
                      ElevatedButton.styleFrom(backgroundColor: Colors.orange),
                  child: const Text("Orange", style: TextStyle(color: Colors.black)),
                ),
                ElevatedButton(
                  onPressed: () {
                    widget.onColourSelected( Colors.yellow );
                    Navigator.of(context).pop();
                  },
                  style:
                      ElevatedButton.styleFrom(backgroundColor: Colors.yellow),
                  child: const Text("Yellow", style: TextStyle(color: Colors.black)),
                ),
                ElevatedButton(
                  onPressed: () {
                    widget.onColourSelected( Colors.lime );
                    Navigator.of(context).pop();
                  },
                  style: ElevatedButton.styleFrom(backgroundColor: Colors.lime),
                  child: const Text("Lime", style: TextStyle(color: Colors.black)),
                ),
                ElevatedButton(
                  onPressed: () {
                    widget.onColourSelected( Colors.lightGreen );
                    Navigator.of(context).pop();
                  },
                  style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.lightGreen),
                  child: const Text("Light Green", style: TextStyle(color: Colors.black)),
                ),
                ElevatedButton(
                  onPressed: () {
                    widget.onColourSelected( Colors.green );
                    Navigator.of(context).pop();
                  },
                  style:
                      ElevatedButton.styleFrom(backgroundColor: Colors.green),
                  child: const Text("Green", style: TextStyle(color: Colors.black)),
                ),
                ElevatedButton(
                  onPressed: () {
                    widget.onColourSelected( Colors.blue );
                    Navigator.of(context).pop();
                  },
                  style: ElevatedButton.styleFrom(backgroundColor: Colors.blue),
                  child: const Text("Blue", style: TextStyle(color: Colors.black)),
                ),
                ElevatedButton(
                  onPressed: () {
                    widget.onColourSelected( Colors.cyan );
                    Navigator.of(context).pop();
                  },
                  style: ElevatedButton.styleFrom(backgroundColor: Colors.cyan),
                  child: const Text("Cyan", style: TextStyle(color: Colors.black)),
                ),
                ElevatedButton(
                  onPressed: () {
                    widget.onColourSelected( Colors.blue.shade900 );
                    Navigator.of(context).pop();
                  },
                  style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.blue.shade900),
                  child: const Text("Dark Blue", style: TextStyle(color: Colors.white)),
                ),
                ElevatedButton(
                  onPressed: () {
                    widget.onColourSelected( Colors.deepPurple.shade600 );
                    Navigator.of(context).pop();
                  },
                  style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.deepPurple.shade600),
                  child: const Text("Dark Blue", style: TextStyle(color: Colors.white)),
                ),
                ElevatedButton(
                  onPressed: () {
                    widget.onColourSelected( Colors.brown );
                    Navigator.of(context).pop();
                  },
                  style:
                      ElevatedButton.styleFrom(backgroundColor: Colors.brown),
                  child: const Text("Brown", style: TextStyle(color: Colors.white)),
                ),
                ElevatedButton(
                  onPressed: () {
                    widget.onColourSelected( Colors.black );
                    Navigator.of(context).pop();
                  },
                  style:
                      ElevatedButton.styleFrom(backgroundColor: Colors.black),
                  child: const Text("Black", style: TextStyle(color: Colors.white)),
                ),
              ],
            ),
          ),
          actions: <Widget>[
            TextButton(
                onPressed: () {
                  Navigator.of(context).pop();
                },
                child: const Text("Cancel"))
          ],
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {
        showDialogueCupertino();
      },
      child: Text("Set ${widget.property} Colour"),
    );
  }
}
