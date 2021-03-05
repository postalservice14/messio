import 'package:flutter/material.dart';
import 'package:messio/pages/ConversationPage.dart';
import 'package:messio/widgets/ConversationBottomSheet.dart';
import 'package:messio/widgets/InputWidget.dart';
import 'package:rubber/rubber.dart';

class ConversationPageSlide extends StatefulWidget {
  @override
  _ConversationPageSlideState createState() => _ConversationPageSlideState();

  const ConversationPageSlide();
}

class _ConversationPageSlideState extends State<ConversationPageSlide>
    with SingleTickerProviderStateMixin {
  var controller;
  final GlobalKey<ScaffoldState> _scaffoldKey = new GlobalKey<ScaffoldState>();

  @override
  void initState() {
    controller = RubberAnimationController(
      vsync: this,
    );
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        key: _scaffoldKey,
        body: Column(
          children: [
            Expanded(
              child: PageView(
                children: [
                  ConversationPage(),
                  ConversationPage(),
                  ConversationPage(),
                ],
              ),
            ),
            Container(
              child: GestureDetector(
                child: InputWidget(),
                onPanUpdate: (details) {
                  if (details.delta.dy < 0) {
                    _scaffoldKey.currentState.showBottomSheet(
                        (context) => ConversationBottomSheet());
                  }
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
