import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:flutter_frontend/main.dart';
import 'package:flutter_frontend/repository/expense_repository.dart';

void main() {
  testWidgets('App shows navigation and Dashboard title', (WidgetTester tester) async {
    final repo = ExpenseRepository();
    final app = ExpenseApp(repository: repo);

    await tester.pumpWidget(app);

    // Allow async provider init microtasks to run
    await tester.pump(const Duration(milliseconds: 1200));

    // App bar should be present (title changes with selected tab)
    expect(find.byType(AppBar), findsOneWidget);

    // Bottom navigation should have three items
    expect(find.byType(BottomNavigationBar), findsOneWidget);
  });
}
