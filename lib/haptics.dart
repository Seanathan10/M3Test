import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
// import 'package:flutter/cupertino.dart';

class LightHaptic extends StatelessWidget {
  const LightHaptic({super.key});

  @override
  Widget build(BuildContext context) {
    Future<void> testLightHaptic() async {
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
                    HapticFeedback.lightImpact();
                    // HapticFeedback.mediumImpact();
                    // HapticFeedback.heavyImpact();
                    // HapticFeedback.selectionClick();
                    // HapticFeedback.vibrate();
                  },
                  child: const Text("Approve"))
            ],
          );
        },
      );
    }

    return Center(
      child: ElevatedButton(onPressed: testLightHaptic, child: const Text("Light Haptic")),
    );
  }
}

class MediumHaptic extends StatelessWidget {
  const MediumHaptic({super.key});

  @override
  Widget build(BuildContext context) {
    Future<void> testMediumHaptic() async {
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
                    // HapticFeedback.lightImpact();
                    HapticFeedback.mediumImpact();
                    // HapticFeedback.heavyImpact();
                    // HapticFeedback.selectionClick();
                    // HapticFeedback.vibrate();
                  },
                  child: const Text("Approve"))
            ],
          );
        },
      );
    }


    return Center(
      child: ElevatedButton(onPressed: testMediumHaptic, child: const Text("Medium Haptic")),
    );
  }
}

class HeavyHaptic extends StatelessWidget {
  const HeavyHaptic({super.key});

  @override
  Widget build(BuildContext context) {
    Future<void> testHeavyHaptic() async {
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
                    // HapticFeedback.lightImpact();
                    // HapticFeedback.mediumImpact();
                    HapticFeedback.heavyImpact();
                    // HapticFeedback.selectionClick();
                    // HapticFeedback.vibrate();
                  },
                  child: const Text("Approve"))
            ],
          );
        },
      );
    }

    return Center(
      child: ElevatedButton(onPressed: testHeavyHaptic, child: const Text("Heavy Haptic")),
    );
  }
}

class SelectionHaptic extends StatelessWidget {
  const SelectionHaptic({super.key});

  @override
  Widget build(BuildContext context) {
    Future<void> testSelectionHaptic() async {
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
                    // HapticFeedback.lightImpact();
                    // HapticFeedback.mediumImpact();
                    // HapticFeedback.heavyImpact();
                    HapticFeedback.selectionClick();
                    // HapticFeedback.vibrate();
                  },
                  child: const Text("Approve"))
            ],
          );
        },
      );
    }

    return Center(
      child: ElevatedButton(onPressed: testSelectionHaptic, child: const Text("Selection Haptic")),
    );
  }
}

class VibrateHaptic extends StatelessWidget {
  const VibrateHaptic({super.key});

  @override
  Widget build(BuildContext context) {
    Future<void> testVibrateHaptic() async {
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
                    // HapticFeedback.lightImpact();
                    // HapticFeedback.mediumImpact();
                    // HapticFeedback.heavyImpact();
                    // HapticFeedback.selectionClick();
                    HapticFeedback.vibrate();
                  },
                  child: const Text("Approve"))
            ],
          );
        },
      );
    }

    return Center(
      child: ElevatedButton(onPressed: testVibrateHaptic, child: const Text("Vibration Haptic")),
    );
  }
}



/*
return Scaffold(
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
                onPressed: testLightHaptic,
                child: const Text("Light Haptic")),
          ),
          Center(
            child: ElevatedButton(
                onPressed: testMediumHaptic,
                child: const Text("Medium Haptic")),
          ),
          Center(
            child: ElevatedButton(
                onPressed: testHeavyHaptic,
                child: const Text("Heavy Haptic")),
          ),
          Center(
            child: ElevatedButton(
                onPressed: testSelectionHaptic,
                child: const Text("Selection Haptic")),
          ),
          Center(
            child: ElevatedButton(
                onPressed: testVibrateHaptic,
                child: const Text("Vibrate Haptic")),
          )
        ],
      ),
    );

*/