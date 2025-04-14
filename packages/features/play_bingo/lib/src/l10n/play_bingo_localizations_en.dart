// coverage:ignore-file

// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'play_bingo_localizations.dart';

// ignore_for_file: type=lint

/// The translations for English (`en`).
class PlayBingoLocalizationsEn extends PlayBingoLocalizations {
  PlayBingoLocalizationsEn([String locale = 'en']) : super(locale);

  @override
  String get contactFormTitle => 'Contact Form';

  @override
  String get newQuery => 'New Query';

  @override
  String get send => 'Send';

  @override
  String get name => 'Name';

  @override
  String get invalidName => 'Invalid name';

  @override
  String get nameInstruction => 'full name';

  @override
  String get email => 'E-Mail Address';

  @override
  String get invalidEMail => 'Invalid email';

  @override
  String get emailInstruction => 'max.muster@seleon.com';

  @override
  String get note => 'Note';

  @override
  String get invalidNote => 'Ungültige Note';

  @override
  String get noteInstruction => 'max. 1000 Zeichen';

  @override
  String get terms =>
      'I hereby agree that my data may be processed by seleon GmbH and used to contact me by e-mail. You can find more information in our ';

  @override
  String get termsDataPrivacy => 'privacy policy.';

  @override
  String get inProgress => 'In progress';

  @override
  String get failure => 'Failure';
}
