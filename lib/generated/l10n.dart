// GENERATED CODE - DO NOT MODIFY BY HAND
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'intl/messages_all.dart';

// **************************************************************************
// Generator: Flutter Intl IDE plugin
// Made by Localizely
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars
// ignore_for_file: join_return_with_assignment, prefer_final_in_for_each
// ignore_for_file: avoid_redundant_argument_values, avoid_escaping_inner_quotes

class S {
  S();

  static S? _current;

  static S get current {
    assert(_current != null,
        'No instance of S was loaded. Try to initialize the S delegate before accessing S.current.');
    return _current!;
  }

  static const AppLocalizationDelegate delegate = AppLocalizationDelegate();

  static Future<S> load(Locale locale) {
    final name = (locale.countryCode?.isEmpty ?? false)
        ? locale.languageCode
        : locale.toString();
    final localeName = Intl.canonicalizedLocale(name);
    return initializeMessages(localeName).then((_) {
      Intl.defaultLocale = localeName;
      final instance = S();
      S._current = instance;

      return instance;
    });
  }

  static S of(BuildContext context) {
    final instance = S.maybeOf(context);
    assert(instance != null,
        'No instance of S present in the widget tree. Did you add S.delegate in localizationsDelegates?');
    return instance!;
  }

  static S? maybeOf(BuildContext context) {
    return Localizations.of<S>(context, S);
  }

  /// `Counter value`
  String get counterValue {
    return Intl.message(
      'Counter value',
      name: 'counterValue',
      desc: '',
      args: [],
    );
  }

  /// `Authorization`
  String get auth {
    return Intl.message(
      'Authorization',
      name: 'auth',
      desc: '',
      args: [],
    );
  }

  /// `Input login and password`
  String get inputLoginAndPassword {
    return Intl.message(
      'Input login and password',
      name: 'inputLoginAndPassword',
      desc: '',
      args: [],
    );
  }

  /// `Login`
  String get login {
    return Intl.message(
      'Login',
      name: 'login',
      desc: '',
      args: [],
    );
  }

  /// `Password`
  String get password {
    return Intl.message(
      'Password',
      name: 'password',
      desc: '',
      args: [],
    );
  }

  /// `Check login`
  String get inputErrorCheckLogin {
    return Intl.message(
      'Check login',
      name: 'inputErrorCheckLogin',
      desc: '',
      args: [],
    );
  }

  /// `Login must contain more than 3 symbols`
  String get inputErrorLoginIsShort {
    return Intl.message(
      'Login must contain more than 3 symbols',
      name: 'inputErrorLoginIsShort',
      desc: '',
      args: [],
    );
  }

  /// `Check password`
  String get inputErrorCheckPassword {
    return Intl.message(
      'Check password',
      name: 'inputErrorCheckPassword',
      desc: '',
      args: [],
    );
  }

  /// `Password must contain more than 8 symbols`
  String get inputErorPasswordIsShort {
    return Intl.message(
      'Password must contain more than 8 symbols',
      name: 'inputErorPasswordIsShort',
      desc: '',
      args: [],
    );
  }

  /// `Try again`
  String get tryAgain {
    return Intl.message(
      'Try again',
      name: 'tryAgain',
      desc: '',
      args: [],
    );
  }

  /// `Close`
  String get close {
    return Intl.message(
      'Close',
      name: 'close',
      desc: '',
      args: [],
    );
  }

  /// `Sign In`
  String get signIn {
    return Intl.message(
      'Sign In',
      name: 'signIn',
      desc: '',
      args: [],
    );
  }

  /// `Language`
  String get language {
    return Intl.message(
      'Language',
      name: 'language',
      desc: '',
      args: [],
    );
  }

  /// `English`
  String get english {
    return Intl.message(
      'English',
      name: 'english',
      desc: '',
      args: [],
    );
  }

  /// `Russian`
  String get russian {
    return Intl.message(
      'Russian',
      name: 'russian',
      desc: '',
      args: [],
    );
  }

  /// `Find character`
  String get findCharacter {
    return Intl.message(
      'Find character',
      name: 'findCharacter',
      desc: '',
      args: [],
    );
  }

  /// `All characters:`
  String get allCharacter {
    return Intl.message(
      'All characters:',
      name: 'allCharacter',
      desc: '',
      args: [],
    );
  }

  /// `List Character`
  String get listCharacterBtn {
    return Intl.message(
      'List Character',
      name: 'listCharacterBtn',
      desc: '',
      args: [],
    );
  }

  /// `Don't have an account yet? `
  String get createAccountText {
    return Intl.message(
      'Don\'t have an account yet? ',
      name: 'createAccountText',
      desc: '',
      args: [],
    );
  }

  /// `Create`
  String get create {
    return Intl.message(
      'Create',
      name: 'create',
      desc: '',
      args: [],
    );
  }

  /// `Error`
  String get error {
    return Intl.message(
      'Error',
      name: 'error',
      desc: '',
      args: [],
    );
  }

  /// `Invalid login or password`
  String get invalidLoginOrPassword {
    return Intl.message(
      'Invalid login or password',
      name: 'invalidLoginOrPassword',
      desc: '',
      args: [],
    );
  }

  /// `OK`
  String get ok {
    return Intl.message(
      'OK',
      name: 'ok',
      desc: '',
      args: [],
    );
  }

  /// `Settings`
  String get settings {
    return Intl.message(
      'Settings',
      name: 'settings',
      desc: '',
      args: [],
    );
  }

  /// `Characters`
  String get characters {
    return Intl.message(
      'Characters',
      name: 'characters',
      desc: '',
      args: [],
    );
  }

  /// `Something went wrong...`
  String get somethingWentWrong {
    return Intl.message(
      'Something went wrong...',
      name: 'somethingWentWrong',
      desc: '',
      args: [],
    );
  }

  /// `Character list is empty...`
  String get characterListIsEmpty {
    return Intl.message(
      'Character list is empty...',
      name: 'characterListIsEmpty',
      desc: '',
      args: [],
    );
  }

  /// `Location list is empty...`
  String get locationListIsEmpty {
    return Intl.message(
      'Location list is empty...',
      name: 'locationListIsEmpty',
      desc: '',
      args: [],
    );
  }

  /// `Locations`
  String get locations {
    return Intl.message(
      'Locations',
      name: 'locations',
      desc: '',
      args: [],
    );
  }

  /// `All locations: `
  String get allLocation {
    return Intl.message(
      'All locations: ',
      name: 'allLocation',
      desc: '',
      args: [],
    );
  }

  /// `Find location`
  String get findLocation {
    return Intl.message(
      'Find location',
      name: 'findLocation',
      desc: '',
      args: [],
    );
  }

  /// `Aired`
  String get aired {
    return Intl.message(
      'Aired',
      name: 'aired',
      desc: '',
      args: [],
    );
  }

  /// `Episodes`
  String get episodes {
    return Intl.message(
      'Episodes',
      name: 'episodes',
      desc: '',
      args: [],
    );
  }

  /// `Episodes list is empty...`
  String get episodesListIsEmpty {
    return Intl.message(
      'Episodes list is empty...',
      name: 'episodesListIsEmpty',
      desc: '',
      args: [],
    );
  }
}

class AppLocalizationDelegate extends LocalizationsDelegate<S> {
  const AppLocalizationDelegate();

  List<Locale> get supportedLocales {
    return const <Locale>[
      Locale.fromSubtags(languageCode: 'en'),
      Locale.fromSubtags(languageCode: 'ru', countryCode: 'RU'),
    ];
  }

  @override
  bool isSupported(Locale locale) => _isSupported(locale);
  @override
  Future<S> load(Locale locale) => S.load(locale);
  @override
  bool shouldReload(AppLocalizationDelegate old) => false;

  bool _isSupported(Locale locale) {
    for (var supportedLocale in supportedLocales) {
      if (supportedLocale.languageCode == locale.languageCode) {
        return true;
      }
    }
    return false;
  }
}
