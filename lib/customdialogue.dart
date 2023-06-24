import 'package:flutter/material.dart';

class CustomDialogue extends StatefulWidget {
  final String buttonText;

  const CustomDialogue({Key? key, required this.buttonText}) : super(key: key);

  @override
  State<CustomDialogue> createState() => _CustomDialogueState();
}

class _CustomDialogueState extends State<CustomDialogue> {
  Future<void> showCustomDialogue() async {
    return showDialog(
      builder: (context) => Dialog(
        backgroundColor: Colors.transparent,
            insetPadding: const EdgeInsets.all(20),
            child: Stack(
              // overflow: Overflow.visible,
              clipBehavior: Clip.none,
              alignment: Alignment.center,
              children: <Widget>[
                Container(
                  width: double.infinity,
                  height: 200,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(45),
                      color: Colors.lightBlue.shade300),
                  padding: const EdgeInsets.fromLTRB(20, 50, 20, 20),
                  child: const Text("Custom dialogue box!",
                      style: TextStyle(fontSize: 24, fontFamily: "Comic Sans MS" ),
                      textAlign: TextAlign.center),
                ),
                Positioned(
                    top: -100,
                    child: Image.network("https://i.imgur.com/2yaf2wb.png",
                        width: 150, height: 150))
              ],
            )),
        context: context,
    );
  }



  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {
        showCustomDialogue();
      },
      child: Text( widget.buttonText ),
    );
  }
}

