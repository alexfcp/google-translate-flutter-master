import 'package:flutter/material.dart';

import 'camera-button.dart';
import 'chat-button.dart';
import 'voice-button.dart';


class TranslateText extends StatefulWidget {
  TranslateText({Key key, this.onTextTouched}) : super(key: key);

  final Function(bool) onTextTouched;

  @override
  _TranslateTextState createState() => _TranslateTextState();
}

class _TranslateTextState extends State<TranslateText> {


  @override
  Widget build(BuildContext context) {
    return Card(
      color: Colors.white,
      margin: EdgeInsets.all(0.0),
      elevation: 2.0,
      child: Container(
        height: 150.0,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Expanded(
              child: InkWell(
                onTap: () {
                  this.widget.onTextTouched(true);
                },
                child: Container(
                  width: double.infinity,
                  padding:
                  EdgeInsets.only(left: 16.0, right: 16.0, top: 16.0),
                  child: Text(
                    "Enter text",
                    style: TextStyle(
                      color: Colors.grey[700],
                    ),
                  ),
                ),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                CameraButton(
                  icon: Icons.camera_alt,
                  text: "Camera",
                ),
                ChatButton(
                  imageIcon: AssetImage("assets/pen.png"),
                  text: "Chat",
                ),
                VoiceButton(
                  icon: Icons.keyboard_voice,
                  text: "Voice",
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}


/* 
SimpleDialogOption(
            onPressed: () { Navigator.push(
              context,
              new MaterialPageRoute(builder: (context) => new SecondScreen()),
            );},
            child: const Text('Chat Room'),
          ) 
          */