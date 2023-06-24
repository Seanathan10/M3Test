import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Tab1 extends StatefulWidget {
  late Color backgroundColor = Colors.transparent;

  Tab1({Key? key, required this.backgroundColor}) : super(key: key);

  @override
  State<Tab1> createState() => _Tab1State();
}

class _Tab1State extends State<Tab1> {
  // late Color backgroundColor = Colors.transparent;

  @override
  Widget build(BuildContext context) {
    Future<void> showDialogue() async {
      return showDialog<void>(
        context: context,
        builder: (BuildContext context) {
          return AlertDialog(
            title: const Text("Alert Title"),
            content: const SingleChildScrollView(
              child: ListBody(
                children: <Widget>[
                  Text("Demo Dialogue"),
                  Text("Approved?"),
                ],
              ),
            ),
            actions: <Widget>[
              TextButton(
                  onPressed: () {
                    Navigator.of(context).pop();
                  },
                  child: const Text("Approve"))
            ],
          );
        },
      );
    }

    Future<void> showDialogueCupertino() async {
      return showCupertinoDialog<void>(
        context: context,
        builder: (BuildContext context) {
          return AlertDialog(
            title: const Text("Alert Title"),
            content: const SingleChildScrollView(
              child: ListBody(
                children: <Widget>[
                  Text("Demo Dialogue"),
                  Text("Approved?"),
                ],
              ),
            ),
            actions: <Widget>[
              TextButton(
                  onPressed: () {
                    Navigator.of(context).pop();
                  },
                  child: const Text("Approve"))
            ],
          );
        },
      );
    }

    return Scaffold(
      backgroundColor: widget.backgroundColor,
      appBar: AppBar(
        centerTitle: true,
        title: const Text("Car tab"),
      ),
      body: Column(
        children: [
          const Center(child: Icon(Icons.directions_car)),
          const Center(child: Text("Primary tab")),
          Center(
            child: ElevatedButton(
                onPressed: showDialogue,
                child: const Text("Show dialogue box")),
          ),
          Center(
            child: ElevatedButton(
                onPressed: showDialogueCupertino,
                child: const Text("Show Cupertino dialogue box")),
          ),
        ],
      ),
    );
  }
}

// child: TextButton(onPressed: showDialog(context: context, builder: (BuildContext context) { return AlertDialog(title: const Text("Test"), content: const Text("Button pressed"), actions: [ElevatedButton(onPressed: () => Navigator.of(context).pop(), child: const Text( "Ok" ))],)},), child: Text("Alert")),