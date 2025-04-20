import 'package:flutter_test/flutter_test.dart';
import 'package:play_bingo/play_bingo.dart';
import 'package:simplebingo/app/app.dart';

void main() {
  group('App', () {
    testWidgets('renders CounterPage', (tester) async {
      await tester.pumpWidget(const App());
      expect(find.byType(BingoBoardPage), findsOneWidget);
    });
  });
}
