import 'package:flutter_test/flutter_test.dart';

import 'package:p4_1_714240064/main.dart';

void main() {
  testWidgets('Ranca Upas detail screen smoke test', (WidgetTester tester) async {
    // Build our app and trigger a frame.
    await tester.pumpWidget(const MyApp());

    // Verify that our title is rendered.
    expect(find.text('Ranca Upas'), findsOneWidget);
    expect(find.text('Open Everyday'), findsOneWidget);
  });
}
