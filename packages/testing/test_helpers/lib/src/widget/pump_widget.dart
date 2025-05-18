import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_test/flutter_test.dart';

// Use of this extension to pump a single widget
// with given delegates and bloc providers
// reduces boilerplate code in tests
extension PumpSingleWidget on WidgetTester {
  // pumpSingleWidget is a helper function
  // to pump a single widget with given delegates
  Future<void> pumpSingleWidget(
    Widget widget,
    List<LocalizationsDelegate<dynamic>> delegates, {
    String locale = 'de',
  }) {
    final app = _createTestApp(widget, delegates, locale: locale);
    return pumpWidget(app);
  }

  // pumpSingleWidgetWithBlocProvider is a helper function
  // to pump a single widget with given delegates and a bloc provider
  Future<void> pumpSingleWidgetWithBlocProvider(
    Widget widget,
    List<LocalizationsDelegate<dynamic>> delegates,
    BlocProvider provider,
  ) {
    return pumpSingleWidgetWithBlocProviders(
      widget,
      delegates,
      [provider],
    );
  }

  Future<void> pumpSingleWidgetWithBlocProviders(
    Widget widget,
    List<LocalizationsDelegate<dynamic>> delegates,
    List<BlocProvider> providers, {
    String locale = 'de',
  }) {
    final app = _createTestApp(widget, delegates, locale: locale);

    final wrappedApp = MultiBlocProvider(
      providers: [
        // add here all bloc providers needed in tests
        ...providers,
      ],

      // app is the widget under test
      child: app,
    );

    return pumpWidget(wrappedApp);
  }

  /// createTestApp wraps widget with fully configured MaterialApp
  Widget _createTestApp(
    Widget widget,
    List<LocalizationsDelegate<dynamic>> delegates, {
    String locale = 'de',
  }) {
    final app = MaterialApp(
      home: Localizations(
        delegates: [
          // add here all localizations delegates needed in tests
          ...delegates,
        ],
        // supported locales: de is default which can be overridden
        locale: Locale(locale),

        // widget under test
        child: widget,
      ),
    );

    return app;
  }
}
