import 'package:flutter/material.dart';
import 'package:messio/config/Palette.dart';
import 'package:messio/config/Styles.dart';

import 'ChatRowWidget.dart';
import 'NavigationPillWidget.dart';

class ConversationBottomSheet extends StatefulWidget {
  @override
  _ConversationBottomSheetState createState() =>
      _ConversationBottomSheetState();

  const ConversationBottomSheet();
}

class _ConversationBottomSheetState extends State<ConversationBottomSheet> {
  @override
  Widget build(BuildContext context) {
    return Material(
      child: Scaffold(
        backgroundColor: Colors.white,
        body: ListView(
          children: [
            GestureDetector(
              child: ListView(
                  shrinkWrap: true,
                  physics: ClampingScrollPhysics(),
                  children: [
                    NavigationPillWidget(),
                    Center(
                      child: Text(
                        'Messages',
                        style: Styles.textHeading,
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    )
                  ]),
              onVerticalDragEnd: (details) {
                if (details.primaryVelocity > 50) {
                  Navigator.pop(context);
                }
              },
            ),
            ListView.separated(
              itemBuilder: (context, index) {
                return ChatRowWidget();
              },
              separatorBuilder: (context, index) => Padding(
                padding: EdgeInsets.only(
                  left: 75,
                  right: 20,
                ),
                child: Divider(
                  color: Palette.accentColor,
                ),
              ),
              itemCount: 5,
              shrinkWrap: true,
              physics: ClampingScrollPhysics(),
            )
          ],
        ),
      ),
    );
  }
}
