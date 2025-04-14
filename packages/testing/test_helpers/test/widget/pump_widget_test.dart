import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:test_helpers/src/l10n/test_helpers_localizations.dart';
import 'package:test_helpers/test_helpers.dart';
import 'simple_counter_cubit.dart';

void main() {
  group('PumpWidget', () {
    testWidgets('Pump single widget', (tester) async {
      var clicked = false;

      // Render Button widget with localizations
      const localizations = TestHelpersLocalizations.localizationsDelegates;
      await tester.pumpSingleWidget(
        TextButton(
          child: const Text(
            'Press me', // could be translated using localizations
            key: Key('press_me_button'),
          ),
          onPressed: () {
            clicked = true;
          },
        ),
        localizations,
      );

      // Check if all necessary widgets are rendered
      await tester.pumpAndSettle();

      // find button by key
      expect(find.byKey(const Key('press_me_button')), findsOneWidget);

      // find button by text
      expect(find.text('Press me'), findsOneWidget);

      // Find button by type and tap button
      // this will trigger onPressed callback
      await tester.tap(find.byType(TextButton));

      // Check if all necessary widgets are rendered
      await tester.pumpAndSettle();

      // Check if onPressed callback was triggered
      expect(clicked, true);
    });

    testWidgets('Pump with bloc provider', (tester) async {
      final simpleCounterCubit = SimpleCounterCubit(5);

      // Render Button widget with localizations
      const localizations = TestHelpersLocalizations.localizationsDelegates;
      await tester.pumpSingleWidgetWithBlocProvider(
        BlocBuilder<SimpleCounterCubit, int>(
          bloc: simpleCounterCubit,
          builder: (context, state) {
            return Text(
              '$state',
              key: const Key('counter_value'),
            );
          },
        ),
        localizations,
        BlocProvider(
          create: (_) => simpleCounterCubit,
        ),
      );

      // Check if all necessary widgets are rendered
      await tester.pumpAndSettle();

      // find current value
      expect(find.text('5'), findsOneWidget);

      simpleCounterCubit.increment();

      // Check if all necessary widgets are rendered
      await tester.pumpAndSettle();

      // find current value
      expect(find.text('6'), findsOneWidget);
    });
  });
}
