import 'package:flutter/material.dart';

import 'package:m3test/haptics.dart';

class Tab5 extends StatefulWidget {
  late Color backgroundColor = Colors.transparent;
  late Color appBarBackgroundColor;
  Tab5({Key? key, required this.backgroundColor, required this.appBarBackgroundColor}) : super(key: key);

  @override
  State<Tab5> createState() => _Tab5State();
}

class _Tab5State extends State<Tab5> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: widget.backgroundColor,
      appBar: AppBar(
        backgroundColor: widget.appBarBackgroundColor,
        centerTitle: true,
        title: const Text("Haptic Testing tab"),
      ),
      body: const Column(
        children: [
          Center(child: Icon(Icons.qr_code)),
          Center(child: Text("Quinary tab")),
          Center(
            child: LightHaptic()
          ),
          Center(
            child: MediumHaptic()
          ),
          Center(
            child: HeavyHaptic()
          ),
          Center(
            child: SelectionHaptic()
          ),
          Center(
            child: VibrateHaptic()
          ),
        ],
      ),
    );
  }
}
