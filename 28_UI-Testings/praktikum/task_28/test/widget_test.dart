import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:task_28/pages/contact_page.dart';

Widget testContactPage() {
  return const MaterialApp(
    debugShowCheckedModeBanner: false,
    home: ContactPage(),
  );
}

void main() {
  group('Test Contact Page', () {
    testWidgets('Test AppBar Contact Page', (WidgetTester tester) async {
      await tester.pumpWidget(
        testContactPage(),
      );
      expect(find.text('Contacts'), findsOneWidget);
    });

    testWidgets('Test Body Contact Page', (WidgetTester tester) async {
      await tester.pumpWidget(
        testContactPage(),
      );
      expect(find.byType(ListView), findsOneWidget);
    });
    testWidgets('Negative Test Image Contact Page', (WidgetTester tester) async {
      await tester.pumpWidget(
        testContactPage(),
      );
      expect(find.byType(Image), findsNothing);
    });
    testWidgets('Test Icon Contact Page', (WidgetTester tester) async {
      await tester.pumpWidget(
        testContactPage(),
      );
      expect(find.byIcon(Icons.add_circle), findsOneWidget);
    });
    testWidgets('Negative Test Icon Contact Page', (WidgetTester tester) async {
      await tester.pumpWidget(
        testContactPage(),
      );
      expect(find.byIcon(Icons.delete), findsNothing);
    });
  });
}
