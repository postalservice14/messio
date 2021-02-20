import 'package:flutter/material.dart';
import 'package:messio/config/Palette.dart';

class InputWidget extends StatelessWidget {
  final TextEditingController textEditingController = TextEditingController();

  InputWidget();

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        children: [
          Material(
            child: Container(
              margin: new EdgeInsets.symmetric(horizontal: 1),
              child: IconButton(
                icon: new Icon(Icons.face),
                onPressed: () => {},
                color: Palette.primaryColor,
              ),
            ),
            color: Colors.white,
          ),
          Flexible(
            child: Container(
              child: TextField(
                style: TextStyle(color: Palette.primaryTextColor, fontSize: 15),
                controller: textEditingController,
                decoration: InputDecoration.collapsed(
                  hintText: 'Type a message',
                  hintStyle: TextStyle(color: Palette.greyColor),
                ),
              ),
            ),
          ),
          Material(
            child: Container(
              margin: new EdgeInsets.symmetric(horizontal: 8),
              child: new IconButton(
                icon: new Icon(Icons.send),
                onPressed: () => {},
                color: Palette.primaryColor,
              ),
            ),
            color: Colors.white,
          )
        ],
      ),
      width: double.infinity,
      height: 50,
      decoration: BoxDecoration(
        border: new Border(
          top: new BorderSide(
            color: Palette.greyColor,
            width: 0.5,
          ),
        ),
        color: Colors.white,
      ),
    );
  }
}
