import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:flutter_thai_hotline_app/main.dart';

Future<void> openDirectory(
  WidgetTester tester, {
  Size size = const Size(440, 956),
}) async {
  await tester.binding.setSurfaceSize(size);
  addTearDown(() => tester.binding.setSurfaceSize(null));
  await tester.pumpWidget(const MyApp());
  await tester.pump(const Duration(seconds: 3));
  await tester.pumpAndSettle();
}

void main() {
  testWidgets('A07-01 shows the splash before opening Travel', (tester) async {
    await tester.pumpWidget(const MyApp());
    expect(find.text('THAI HOTLINE APP'), findsOneWidget);
    await tester.pump(const Duration(seconds: 3));
    await tester.pumpAndSettle();
    expect(find.text('1197'), findsOneWidget);
  });

  testWidgets('A07-02 and A07-04 switch categories and return from About', (
    tester,
  ) async {
    await openDirectory(tester);
    for (final (index, number) in [
      (1, '191'),
      (2, '02-111-1111'),
      (3, '1130'),
    ]) {
      await tester.tap(find.byKey(ValueKey('category-$index')));
      await tester.pumpAndSettle();
      expect(find.text(number), findsOneWidget);
    }
    await tester.tap(find.byTooltip('ผู้จัดทำ'));
    await tester.pumpAndSettle();
    expect(find.text('มหาวิทยาลัยเอเชียอาคเนย์'), findsOneWidget);
    await tester.pageBack();
    await tester.pumpAndSettle();
    expect(find.text('1130'), findsOneWidget);
  });

  testWidgets('A07-03 reports when the phone app cannot open', (tester) async {
    await openDirectory(tester);
    const channel = MethodChannel('plugins.flutter.io/url_launcher');
    final messenger = tester.binding.defaultBinaryMessenger;
    MethodCall? dialRequest;
    messenger.setMockMethodCallHandler(channel, (call) async {
      dialRequest = call;
      return false;
    });
    addTearDown(() => messenger.setMockMethodCallHandler(channel, null));
    await tester.tap(find.byTooltip('โทร ข้อมูลจราจร 1197'));
    await tester.pump();
    expect(dialRequest?.method, 'launch');
    expect(dialRequest?.arguments['url'], 'tel:1197');
    await tester.pumpAndSettle();
    expect(find.text('เปิดแอปโทรศัพท์ไม่ได้'), findsOneWidget);
  });

  testWidgets('A07-05 scrolls to the end on a small screen', (tester) async {
    await openDirectory(tester, size: const Size(320, 600));
    await tester.scrollUntilVisible(find.text('1690'), 250);
    expect(find.text('1690'), findsOneWidget);
    expect(tester.takeException(), isNull);
  });
}
