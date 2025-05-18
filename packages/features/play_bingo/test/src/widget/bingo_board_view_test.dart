import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:play_bingo/src/bloc/game_bloc.dart';
import 'package:play_bingo/src/bloc/game_state.dart';
import 'package:play_bingo/src/l10n/play_bingo_localizations.dart';
import 'package:play_bingo/src/widget/bingo_board_view.dart';
import 'package:test_helpers/test_helpers.dart';

void main() {
  testWidgets('BingoBoardView shows success screen', (tester) async {
    final bloc = GameBloc(labels: ['a', 'b', 'c']);
    final blocProvider = BlocProvider<GameBloc>(create: (_) => bloc);
    const localizations = PlayBingoLocalizations.localizationsDelegates;

    await tester.pumpSingleWidgetWithBlocProvider(
      const BingoBoardView(),
      localizations,
      blocProvider,
    );

    await tester.pumpAndSettle();

    expect(
      find.text('a'),
      findsOneWidget,
    );

    expect(bloc.state.found, 0);

    await tester.tap(find.text('a'));
    await tester.pumpAndSettle();

    expect(bloc.state.found, 1);

    await tester.tap(find.text('a'));
    await tester.pumpAndSettle();

    expect(bloc.state.found, 0);
  });
}
