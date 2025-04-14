// coverage:ignore-file

// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'play_bingo_localizations.dart';

// ignore_for_file: type=lint

/// The translations for German (`de`).
class PlayBingoLocalizationsDe extends PlayBingoLocalizations {
  PlayBingoLocalizationsDe([String locale = 'de']) : super(locale);

  @override
  String get contactFormTitle => 'Contact Form';

  @override
  String get newQuery => 'Neue Abfrage';

  @override
  String get send => 'Senden';

  @override
  String get name => 'Name';

  @override
  String get invalidName => 'Ungültiger Name';

  @override
  String get nameInstruction => 'Vorname Nachname';

  @override
  String get email => 'E-Mail-Adresse';

  @override
  String get invalidEMail => 'Ungültige E-Mail';

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
      'Hiermit stimme ich zu, dass meine Daten von seleon GmbH verarbeitet und für die Kontaktaufnahme per E-Mail verwendet werden dürfen. Nähere Informationen finden Sie in unserer ';

  @override
  String get termsDataPrivacy => 'Datenschutzerklärung.';

  @override
  String get inProgress => 'In Bearbeitung';

  @override
  String get failure => 'Fehler';
}
