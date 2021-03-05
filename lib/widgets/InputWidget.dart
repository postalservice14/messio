import 'package:flutter/material.dart';
import 'package:messio/config/Palette.dart';
import 'package:messio/widgets/ConversationBottomSheet.dart';

class InputWidget extends StatelessWidget {
  final TextEditingController textEditingController = TextEditingController();

  InputWidget();

  @override
  Widget build(BuildContext context) {
    return Material(
      elevation: 60,
      child: Container(
        child: Row(
          children: [
            Material(
              child: Container(
                margin: new EdgeInsets.symmetric(horizontal: 1),
                child: IconButton(
                  icon: new Icon(Icons.face),
                  onPressed: () => {
                    showModalBottomSheet(
                      context: context,
                      builder: (BuildContext bc) {
                        return Container(
                          child: new Wrap(
                            children: [
                              ConversationBottomSheet(),
                            ],
                          ),
                        );
                      },
                    )
                  },
                  color: Palette.accentColor,
                ),
              ),
              color: Colors.white,
            ),
            Flexible(
              child: Material(
                child: Container(
                  child: TextField(
                    style: TextStyle(
                        color: Palette.primaryTextColor, fontSize: 15),
                    controller: textEditingController,
                    decoration: InputDecoration.collapsed(
                      hintText: 'Type a message',
                      hintStyle: TextStyle(color: Palette.greyColor),
                    ),
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
                  color: Palette.accentColor,
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
      ),
    );
  }
}
