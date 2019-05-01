import 'package:flutter/material.dart';
import 'package:google_translate/screens/home-page.dart';
import '../components/camera_type.dart';


class CameraButton extends StatefulWidget {
  CameraButton({Key key, this.icon, this.text, this.imageIcon})
      : super(key: key);

  final IconData icon;
  final AssetImage imageIcon;
  final String text;

  @override
  _CameraButtonState createState() => _CameraButtonState();
}

class _CameraButtonState extends State<CameraButton> {

  Widget _displayIcon() {
    if (this.widget.icon != null) {
      return Icon(
        this.widget.icon,
        size: 23.0,
        color: Colors.blue[800],
      );
    } else if (this.widget.imageIcon != null) {
      return ImageIcon(
        this.widget.imageIcon,
        size: 23.0,
        color: Colors.blue[800],
      );
    } else {
      return Container();
    }
  }

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.white,
      child: FlatButton(
        padding: EdgeInsets.only(
          left: 8.0,
          right: 8.0,
          top: 2.0,
          bottom: 2.0,
        ),
        onPressed: () { Navigator.push(
          context,
          new MaterialPageRoute(builder: (context) => new FlutterVisionApp()),
        ); },
        child: Column(
          children: <Widget>[
            _displayIcon(),
            Text(
              this.widget.text,
              style: TextStyle(fontSize: 12),
            ),
          ],
        ),
      ),
    );
  }
}