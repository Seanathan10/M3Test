import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

class ColourPicker extends StatefulWidget {
  final String property;

  const ColourPicker({Key? key, required this.property}) : super(key: key);

  @override
  State<ColourPicker> createState() => _ColourPickerState();
}

class _ColourPickerState extends State<ColourPicker> {
  Future<void> showDialogueCupertino() async {
    return showCupertinoDialog<void>(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text("Select colour for ${widget.property}"),
          content: SingleChildScrollView(
            child: ListBody(
              children: <Widget>[
                ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(backgroundColor: Colors.red),
                  child: const Text("Red"),
                ),
                ElevatedButton(
                  onPressed: () {},
                  style:
                      ElevatedButton.styleFrom(backgroundColor: Colors.orange),
                  child: const Text("Orange"),
                ),
                ElevatedButton(
                  onPressed: () {},
                  style:
                      ElevatedButton.styleFrom(backgroundColor: Colors.yellow),
                  child: const Text("Yellow"),
                ),
                ElevatedButton(
                  onPressed: () {},
                  style:
                      ElevatedButton.styleFrom(backgroundColor: Colors.green),
                  child: const Text("Green"),
                ),
                ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(backgroundColor: Colors.blue),
                  child: const Text("Blue"),
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
        // showCustomDialogue();
      },
      child: Text("${widget.property} Colour"),
    );
  }
}
