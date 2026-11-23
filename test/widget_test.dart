import 'package:flutter_test/flutter_test.dart';
import 'package:material_ui/material_ui.dart';

import 'package:box/main.dart';

void main() {
  testWidgets('Theme toggle smoke test', (WidgetTester tester) async {
    await tester.pumpWidget(const Box());

    expect(find.text('Box app test'), findsNWidgets(2));
    expect(find.byIcon(Icons.dark_mode), findsOneWidget);

    await tester.tap(find.byIcon(Icons.dark_mode));
    await tester.pumpAndSettle();

    expect(find.byIcon(Icons.light_mode), findsOneWidget);
  });
}
