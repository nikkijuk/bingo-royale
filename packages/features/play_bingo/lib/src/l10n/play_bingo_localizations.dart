// coverage:ignore-file
import 'dart:async';

import 'package:flutter/foundation.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:intl/intl.dart' as intl;

import 'play_bingo_localizations_de.dart';
import 'play_bingo_localizations_en.dart';

// ignore_for_file: type=lint

/// Callers can lookup localized strings with an instance of PlayBingoLocalizations
/// returned by `PlayBingoLocalizations.of(context)`.
///
/// Applications need to include `PlayBingoLocalizations.delegate()` in their app's
/// `localizationDelegates` list, and the locales they support in the app's
/// `supportedLocales` list. For example:
///
/// ```dart
/// import 'l10n/play_bingo_localizations.dart';
///
/// return MaterialApp(
///   localizationsDelegates: PlayBingoLocalizations.localizationsDelegates,
///   supportedLocales: PlayBingoLocalizations.supportedLocales,
///   home: MyApplicationHome(),
/// );
/// ```
///
/// ## Update pubspec.yaml
///
/// Please make sure to update your pubspec.yaml to include the following
/// packages:
///
/// ```yaml
/// dependencies:
///   # Internationalization support.
///   flutter_localizations:
///     sdk: flutter
///   intl: any # Use the pinned version from flutter_localizations
///
///   # Rest of dependencies
/// ```
///
/// ## iOS Applications
///
/// iOS applications define key application metadata, including supported
/// locales, in an Info.plist file that is built into the application bundle.
/// To configure the locales supported by your app, you’ll need to edit this
/// file.
///
/// First, open your project’s ios/Runner.xcworkspace Xcode workspace file.
/// Then, in the Project Navigator, open the Info.plist file under the Runner
/// project’s Runner folder.
///
/// Next, select the Information Property List item, select Add Item from the
/// Editor menu, then select Localizations from the pop-up menu.
///
/// Select and expand the newly-created Localizations item then, for each
/// locale your application supports, add a new item and select the locale
/// you wish to add from the pop-up menu in the Value field. This list should
/// be consistent with the languages listed in the PlayBingoLocalizations.supportedLocales
/// property.
abstract class PlayBingoLocalizations {
  PlayBingoLocalizations(String locale)
    : localeName = intl.Intl.canonicalizedLocale(locale.toString());

  final String localeName;

  static PlayBingoLocalizations of(BuildContext context) {
    return Localizations.of<PlayBingoLocalizations>(
      context,
      PlayBingoLocalizations,
    )!;
  }

  static const LocalizationsDelegate<PlayBingoLocalizations> delegate =
      _PlayBingoLocalizationsDelegate();

  /// A list of this localizations delegate along with the default localizations
  /// delegates.
  ///
  /// Returns a list of localizations delegates containing this delegate along with
  /// GlobalMaterialLocalizations.delegate, GlobalCupertinoLocalizations.delegate,
  /// and GlobalWidgetsLocalizations.delegate.
  ///
  /// Additional delegates can be added by appending to this list in
  /// MaterialApp. This list does not have to be used at all if a custom list
  /// of delegates is preferred or required.
  static const List<LocalizationsDelegate<dynamic>> localizationsDelegates =
      <LocalizationsDelegate<dynamic>>[
        delegate,
        GlobalMaterialLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
      ];

  /// A list of this localizations delegate's supported locales.
  static const List<Locale> supportedLocales = <Locale>[
    Locale('de'),
    Locale('en'),
  ];

  /// No description provided for @contactFormTitle.
  ///
  /// In en, this message translates to:
  /// **'Contact Form'**
  String get contactFormTitle;

  /// No description provided for @newQuery.
  ///
  /// In en, this message translates to:
  /// **'New Query'**
  String get newQuery;

  /// No description provided for @send.
  ///
  /// In en, this message translates to:
  /// **'Send'**
  String get send;

  /// No description provided for @name.
  ///
  /// In en, this message translates to:
  /// **'Name'**
  String get name;

  /// No description provided for @invalidName.
  ///
  /// In en, this message translates to:
  /// **'Invalid name'**
  String get invalidName;

  /// No description provided for @nameInstruction.
  ///
  /// In en, this message translates to:
  /// **'full name'**
  String get nameInstruction;

  /// No description provided for @email.
  ///
  /// In en, this message translates to:
  /// **'E-Mail Address'**
  String get email;

  /// No description provided for @invalidEMail.
  ///
  /// In en, this message translates to:
  /// **'Invalid email'**
  String get invalidEMail;

  /// No description provided for @emailInstruction.
  ///
  /// In en, this message translates to:
  /// **'max.muster@seleon.com'**
  String get emailInstruction;

  /// No description provided for @note.
  ///
  /// In en, this message translates to:
  /// **'Note'**
  String get note;

  /// No description provided for @invalidNote.
  ///
  /// In en, this message translates to:
  /// **'Ungültige Note'**
  String get invalidNote;

  /// No description provided for @noteInstruction.
  ///
  /// In en, this message translates to:
  /// **'max. 1000 Zeichen'**
  String get noteInstruction;

  /// No description provided for @terms.
  ///
  /// In en, this message translates to:
  /// **'I hereby agree that my data may be processed by seleon GmbH and used to contact me by e-mail. You can find more information in our '**
  String get terms;

  /// No description provided for @termsDataPrivacy.
  ///
  /// In en, this message translates to:
  /// **'privacy policy.'**
  String get termsDataPrivacy;

  /// No description provided for @inProgress.
  ///
  /// In en, this message translates to:
  /// **'In progress'**
  String get inProgress;

  /// No description provided for @failure.
  ///
  /// In en, this message translates to:
  /// **'Failure'**
  String get failure;
}

class _PlayBingoLocalizationsDelegate
    extends LocalizationsDelegate<PlayBingoLocalizations> {
  const _PlayBingoLocalizationsDelegate();

  @override
  Future<PlayBingoLocalizations> load(Locale locale) {
    return SynchronousFuture<PlayBingoLocalizations>(
      lookupPlayBingoLocalizations(locale),
    );
  }

  @override
  bool isSupported(Locale locale) =>
      <String>['de', 'en'].contains(locale.languageCode);

  @override
  bool shouldReload(_PlayBingoLocalizationsDelegate old) => false;
}

PlayBingoLocalizations lookupPlayBingoLocalizations(Locale locale) {
  // Lookup logic when only language code is specified.
  switch (locale.languageCode) {
    case 'de':
      return PlayBingoLocalizationsDe();
    case 'en':
      return PlayBingoLocalizationsEn();
  }

  throw FlutterError(
    'PlayBingoLocalizations.delegate failed to load unsupported locale "$locale". This is likely '
    'an issue with the localizations generation tool. Please file an issue '
    'on GitHub with a reproducible sample app and the gen-l10n configuration '
    'that was used.',
  );
}
