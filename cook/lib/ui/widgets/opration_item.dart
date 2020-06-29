import 'package:flutter/material.dart';
import "package:cook/core/extensions/int_extension.dart";

class OprationItem extends StatelessWidget {
  final Widget _icon;
  final String _title;
  final Color textcolor;

  OprationItem(this._icon, this._title, {this.textcolor = Colors.black});

  @override
  Widget build(BuildContext context) {
    
    return Container(
      width: 80.px,
      padding: EdgeInsets.symmetric(vertical: 12.px),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          _icon,
          SizedBox(width: 3.px,),
          Text(_title, style: TextStyle(color: textcolor,),)
        ],
      ),
    );
  }
}