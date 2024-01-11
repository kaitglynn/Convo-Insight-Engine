```dart
import 'package:flutter_test/flutter_test.dart';
import 'package:insight_engine/main_screen.dart';
import 'package:insight_engine/chat_interface.dart';
import 'package:insight_engine/user_profile.dart';
import 'package:insight_engine/bot_profile.dart';
import 'package:insight_engine/file_sharing.dart';
import 'package:insight_engine/chat_history.dart';
import 'package:insight_engine/search.dart';
import 'package:insight_engine/additional_features.dart';
import 'package:insight_engine/creative_touch.dart';

void main() {
  group('Main Screen Tests', () {
    testWidgets('Main Screen UI Test', (WidgetTester tester) async {
      await tester.pumpWidget(MainScreen());
      expect(find.byKey(Key('mainScreen')), findsOneWidget);
    });
  });

  group('Chat Interface Tests', () {
    testWidgets('Chat Interface UI Test', (WidgetTester tester) async {
      await tester.pumpWidget(ChatInterface());
      expect(find.byKey(Key('chatInterface')), findsOneWidget);
    });
  });

  group('User Profile Tests', () {
    testWidgets('User Profile UI Test', (WidgetTester tester) async {
      await tester.pumpWidget(UserProfile());
      expect(find.byKey(Key('userProfile')), findsOneWidget);
    });
  });

  group('Bot Profile Tests', () {
    testWidgets('Bot Profile UI Test', (WidgetTester tester) async {
      await tester.pumpWidget(BotProfile());
      expect(find.byKey(Key('botProfile')), findsOneWidget);
    });
  });

  group('File Sharing Tests', () {
    testWidgets('File Sharing UI Test', (WidgetTester tester) async {
      await tester.pumpWidget(FileSharing());
      expect(find.byKey(Key('fileSharing')), findsOneWidget);
    });
  });

  group('Chat History Tests', () {
    testWidgets('Chat History UI Test', (WidgetTester tester) async {
      await tester.pumpWidget(ChatHistory());
      expect(find.byKey(Key('chatHistory')), findsOneWidget);
    });
  });

  group('Search Tests', () {
    testWidgets('Search UI Test', (WidgetTester tester) async {
      await tester.pumpWidget(Search());
      expect(find.byKey(Key('searchBar')), findsOneWidget);
    });
  });

  group('Additional Features Tests', () {
    testWidgets('Additional Features UI Test', (WidgetTester tester) async {
      await tester.pumpWidget(AdditionalFeatures());
      expect(find.byKey(Key('additionalFeatures')), findsOneWidget);
    });
  });

  group('Creative Touch Tests', () {
    testWidgets('Creative Touch UI Test', (WidgetTester tester) async {
      await tester.pumpWidget(CreativeTouch());
      expect(find.byKey(Key('creativeTouch')), findsOneWidget);
    });
  });
}
```