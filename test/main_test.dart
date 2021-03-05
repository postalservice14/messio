import 'package:flutter_test/flutter_test.dart';

import 'package:messio/main.dart';
import 'package:messio/pages/ConversationPageSlide.dart';

void main() {
  testWidgets('Main UI Test', (WidgetTester tester) async {
    await tester.pumpWidget(Messio());

    expect(find.byType(ConversationPageSlide), findsOneWidget);
  });
}
