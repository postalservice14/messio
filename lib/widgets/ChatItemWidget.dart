import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:messio/config/Palette.dart';
import 'package:messio/config/Styles.dart';

class ChatItemWidget extends StatelessWidget {
  final int index;

  const ChatItemWidget(this.index);

  @override
  Widget build(BuildContext context) {
    if (index % 2 == 0) {
      return Container(
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Container(
                  child: Text(
                    'This is the sent message',
                    style: TextStyle(color: Palette.selfMessageColor),
                  ),
                  padding: EdgeInsets.fromLTRB(15, 10, 15, 10),
                  width: 200.0,
                  decoration: BoxDecoration(
                    color: Palette.selfMessageBackgroundColor,
                    borderRadius: BorderRadius.circular(8),
                  ),
                  margin: EdgeInsets.only(right: 10),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Container(
                  child: Text(
                    DateFormat('dd MMM kk:mm').format(
                        DateTime.fromMillisecondsSinceEpoch(1565888474278)),
                    style: Styles.date,
                  ),
                  margin: EdgeInsets.only(left: 5, top: 5, bottom: 5),
                )
              ],
            )
          ],
        ),
      );
    } else {
      return Container(
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Container(
                  child: Text(
                    'This is a received message',
                    style: TextStyle(color: Palette.otherMessageColor),
                  ),
                  padding: EdgeInsets.fromLTRB(15, 10, 15, 10),
                  width: 200.0,
                  decoration: BoxDecoration(
                    color: Palette.otherMessageBackgroundColor,
                    borderRadius: BorderRadius.circular(8),
                  ),
                  margin: EdgeInsets.only(left: 10),
                ),
              ],
            ),
            Container(
              child: Text(
                DateFormat('dd MMM kk:mm')
                    .format(DateTime.fromMillisecondsSinceEpoch(1565888474278)),
                style: Styles.date,
              ),
              margin: EdgeInsets.only(left: 5, top: 5, bottom: 5),
            )
          ],
          crossAxisAlignment: CrossAxisAlignment.start,
        ),
        margin: EdgeInsets.only(bottom: 10),
      );
    }
  }
}
