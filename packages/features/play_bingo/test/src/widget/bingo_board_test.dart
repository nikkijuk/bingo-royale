import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:play_bingo/src/bloc/game_bloc.dart';
import 'package:play_bingo/src/l10n/play_bingo_localizations.dart';
import 'package:play_bingo/src/widget/bingo_board.dart';
import 'package:test_helpers/test_helpers.dart';

const infoHeader = 'Success';
const infoDetail = 'Sending was Success';
const mailSuccessPath = 'assets/icons/sendReport/mail_success.png';

void noOperation() => {};

void main() {
  testWidgets('BingoBoardView shows success screen', (tester) async {

    final bloc = GameBloc(labels: ['a','b','c']);
    final blocProvider = BlocProvider<GameBloc>(create: (_) => bloc);
    const localizations = PlayBingoLocalizations.localizationsDelegates;

    await tester.pumpSingleWidgetWithBlocProvider(
      const BingoBoard(),
      localizations,
      blocProvider,
      //PlayBingoLocalizations.localizationsDelegates,
    );

    await tester.pumpAndSettle();

    expect(
      find.byKey(const Key(
        'ContactFormSentView_info_header',
      ),),
      findsOneWidget,
    );
    expect(
      find.byKey(const Key(
        'ContactFormSentView_info_detail',
      ),),
      findsOneWidget,
    );

    expect(
      find.image(
        const AssetImage(mailSuccessPath),
      ),
      findsOneWidget,
    );

    expect(
      find.byKey(const Key('ContactFormSentView_finishedButton')),
      findsOneWidget,
    );

    expect(
      find.byKey(const Key('ContactFormSentView_restart_icon')),
      findsOneWidget,
    );

    expect(
      find.byKey(const Key('ContactFormSentView_new_query')),
      findsOneWidget,
    );

    await tester.tap(find.byType(ElevatedButton));
    await tester.pumpAndSettle();

  }, skip: true,);
}
