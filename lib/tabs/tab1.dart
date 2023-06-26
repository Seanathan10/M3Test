import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Tab1 extends StatefulWidget {
  late Color backgroundColor = Colors.transparent;
  late Color appBarBackgroundColor;
  late GlobalKey<ScaffoldMessengerState> passedRootScaffoldMessengerKey;

  Tab1({Key? key, required this.backgroundColor, required this.appBarBackgroundColor }) : super(key: key);
  // Tab1({Key? key, required this.backgroundColor, required this.passedRootScaffoldMessengerKey}) : super(key: key);

  @override
  State<Tab1> createState() => _Tab1State();
}

class _Tab1State extends State<Tab1> {
  // late Color backgroundColor = Colors.transparent;
  static final GlobalKey<ScaffoldMessengerState> scaffoldKey = GlobalKey<ScaffoldMessengerState>();

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
      key: scaffoldKey,
      // key: widget.passedRootScaffoldMessengerKey,
      floatingActionButtonLocation: FloatingActionButtonLocation.endFloat,
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          // ScaffoldMessenger.of(context).showSnackBar( const SnackBar( content: Text("Floating action button pressed"), ), );
          // widget.scaffoldMessengerKey.currentState?.showSnackBar(const SnackBar(content: Text("Tab 1 floating action button"), duration: Duration(milliseconds: 1250), backgroundColor: Color.fromARGB(255, 13, 71, 161), behavior: SnackBarBehavior.fixed,));
          // scaffoldKey.showSnackBar( const SnackBar(content: Text("Hello")) ),
          // Scaffold.of(context).showSnackBar(const SnackBar(content: Text("Tab 1 floating action button"), duration: Duration(milliseconds: 1250), backgroundColor: Color.fromARGB(255, 13, 71, 161), behavior: SnackBarBehavior.fixed,));
          // widget.passedRootScaffoldMessengerKey.currentState?.showSnackBar(const SnackBar(content: Text("Tab 1 floating action button"), duration: Duration(milliseconds: 1250), backgroundColor: Color.fromARGB(255, 13, 71, 161), behavior: SnackBarBehavior.fixed,));
          // scaffoldMessengerKey.currentState?.showSnackBar(const SnackBar(content: Text("Tab 1 floating action button"), duration: Duration(milliseconds: 1250), backgroundColor: Color.fromARGB(255, 13, 71, 161), behavior: SnackBarBehavior.fixed,));
          // scaffoldKey.currentState?.showSnackBar(const SnackBar(content: Text("Tab 1 floating action button"), duration: Duration(milliseconds: 1250), backgroundColor: Color.fromARGB(255, 13, 71, 161), behavior: SnackBarBehavior.fixed,));
          ScaffoldMessengerState? state = context.findAncestorStateOfType<ScaffoldMessengerState>();
          state?.showSnackBar(const SnackBar(
              content: Text('This is a SnackBar'),
              duration: Duration(milliseconds: 500),
            ));


        },
        child: const Icon(Icons.add),
      ),
      backgroundColor: widget.backgroundColor,
      appBar: AppBar(
        backgroundColor: widget.appBarBackgroundColor,
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