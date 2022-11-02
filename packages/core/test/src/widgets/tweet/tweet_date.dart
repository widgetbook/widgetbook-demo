import 'package:core/src/widgets/tweet/tweet_date.dart';
import 'package:flutter_test/flutter_test.dart';

import '../../../test-utils/pump_app.dart';

void main() {
  testWidgets(
    'Shows timeago date for dates earlier than 24 hours',
    (WidgetTester tester) async {
      await tester.pumpApp(
        TweetDate(
          date: DateTime.now().subtract(const Duration(hours: 23)),
        ),
      );

      expect(find.text('23h'), findsOneWidget);
    },
  );

  testWidgets(
    'Shows year for a date with a different year from now',
    (WidgetTester tester) async {
      await tester.pumpApp(
        TweetDate(
          date: DateTime.now().subtract(const Duration(days: 380)),
        ),
      );

      expect(
        find.textContaining('${DateTime.now().year - 1}'),
        findsOneWidget,
      );
    },
  );
}
