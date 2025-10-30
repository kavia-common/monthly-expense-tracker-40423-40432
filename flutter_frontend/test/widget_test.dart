import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:flutter_frontend/app.dart';

void main() {
  testWidgets('App builds and shows navigation', (WidgetTester tester) async {
    await tester.pumpWidget(const ExpenseApp());

    // Allow build
    await tester.pump(const Duration(milliseconds: 300));

    // NavigationBar should exist
    expect(find.byType(NavigationBar), findsOneWidget);
  });
}
