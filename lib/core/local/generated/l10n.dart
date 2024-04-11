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

  /// `Home Food`
  String get title {
    return Intl.message(
      'Home Food',
      name: 'title',
      desc: '',
      args: [],
    );
  }

  /// `Домашняя еда в офис`
  String get onboard_title_1 {
    return Intl.message(
      'Домашняя еда в офис',
      name: 'onboard_title_1',
      desc: '',
      args: [],
    );
  }

  String get select_category_description {
    return Intl.message(
      'Выберите минимум 2 категорий',
      name: 'select_category_description',
      desc: '',
      args: [],
    );
  }

  String get share_location {
    return Intl.message(
      'Поделиться местоположением',
      name: 'share_location',
      desc: '',
      args: [],
    );
  }

  /// `Выгодные цены`
  String get onboard_title_2 {
    return Intl.message(
      'Выгодные цены',
      name: 'onboard_title_2',
      desc: '',
      args: [],
    );
  }

  /// `Быстрая доставка`
  String get onboard_title_3 {
    return Intl.message(
      'Быстрая доставка',
      name: 'onboard_title_3',
      desc: '',
      args: [],
    );
  }

  /// `Войти`
  String get onboard_login_button {
    return Intl.message(
      'Войти',
      name: 'onboard_login_button',
      desc: '',
      args: [],
    );
  }

  /// `Войти как повар`
  String get onboard_chief_login_button {
    return Intl.message(
      'Войти как повар',
      name: 'onboard_chief_login_button',
      desc: '',
      args: [],
    );
  }

  /// `Нет ничего лучше чем еда приготовленная собственными руками!  Заказывай домашнюю еду через HomeFood.`
  String get onboard_description_1 {
    return Intl.message(
      'Нет ничего лучше чем еда приготовленная собственными руками!  Заказывай домашнюю еду через HomeFood.',
      name: 'onboard_description_1',
      desc: '',
      args: [],
    );
  }

  /// `У нас самые выгодные цены! Сделай свой \nпервый заказ и получи 500 бонусов!`
  String get onboard_description_2 {
    return Intl.message(
      'У нас самые выгодные цены! Сделай свой \nпервый заказ и получи 500 бонусов!',
      name: 'onboard_description_2',
      desc: '',
      args: [],
    );
  }

  /// `HomeFood работает в узком радиусе, так что доставка не займет много времени ;)`
  String get onboard_description_3 {
    return Intl.message(
      'HomeFood работает в узком радиусе, так что доставка не займет много времени ;)',
      name: 'onboard_description_3',
      desc: '',
      args: [],
    );
  }

  /// `Войти`
  String get login_title {
    return Intl.message(
      'Войти',
      name: 'login_title',
      desc: '',
      args: [],
    );
  }

  /// `Введите код`
  String get login_enter_code {
    return Intl.message(
      'Введите код',
      name: 'login_enter_code',
      desc: '',
      args: [],
    );
  }

  /// `Электронный адрес`
  String get login_enter_email {
    return Intl.message(
      'Электронный адрес',
      name: 'login_enter_email',
      desc: '',
      args: [],
    );
  }

  /// `Мы отправим вам письмо с кодом для входа в систему`
  String get login_sending_message {
    return Intl.message(
      'Мы отправим вам письмо с кодом для входа в систему',
      name: 'login_sending_message',
      desc: '',
      args: [],
    );
  }

  /// `Мы отправили вам письмо с кодом для входа в систему`
  String get login_sent_message {
    return Intl.message(
      'Мы отправили вам письмо с кодом для входа в систему',
      name: 'login_sent_message',
      desc: '',
      args: [],
    );
  }

  /// `Отправить`
  String get login_send_message_button {
    return Intl.message(
      'Отправить',
      name: 'login_send_message_button',
      desc: '',
      args: [],
    );
  }

  /// `Продолжая использование сервиса, вы соглашаетесь с нашим условиями пользовательского соглашения.`
  String get login_agreement {
    return Intl.message(
      'Продолжая использование сервиса, вы соглашаетесь с нашим условиями пользовательского соглашения.',
      name: 'login_agreement',
      desc: '',
      args: [],
    );
  }

  /// `Или продолжить с`
  String get login_auth_with_other_services {
    return Intl.message(
      'Или продолжить с',
      name: 'login_auth_with_other_services',
      desc: '',
      args: [],
    );
  }

  /// `Отправить код еще раз`
  String get login_send_code_again {
    return Intl.message(
      'Отправить код еще раз',
      name: 'login_send_code_again',
      desc: '',
      args: [],
    );
  }

  /// `Начните работу сейчас!`
  String get login_chief_start_work {
    return Intl.message(
      'Начните работу сейчас!',
      name: 'login_chief_start_work',
      desc: '',
      args: [],
    );
  }

  /// `Заполните пожалуйста анкету для начала работы повара.`
  String get login_chief_fill_form {
    return Intl.message(
      'Заполните пожалуйста анкету для начала работы повара.',
      name: 'login_chief_fill_form',
      desc: '',
      args: [],
    );
  }

  /// `Перейти к анкете`
  String get login_go_to_form {
    return Intl.message(
      'Перейти к анкете',
      name: 'login_go_to_form',
      desc: '',
      args: [],
    );
  }

  /// `Введите данные`
  String get chief_registrtion_enter_datas {
    return Intl.message(
      'Введите данные',
      name: 'chief_registrtion_enter_datas',
      desc: '',
      args: [],
    );
  }

  /// `Введите Ваш номер телефона`
  String get chief_registrtion_enter_phone_number {
    return Intl.message(
      'Введите Ваш номер телефона',
      name: 'chief_registrtion_enter_phone_number',
      desc: '',
      args: [],
    );
  }

  /// `Введите код`
  String get chief_registrtion_enter_code {
    return Intl.message(
      'Введите код',
      name: 'chief_registrtion_enter_code',
      desc: '',
      args: [],
    );
  }

  /// `Мы отправили Вам СМС с кодом`
  String get chief_registrtion_we_sent_code {
    return Intl.message(
      'Мы отправили Вам СМС с кодом',
      name: 'chief_registrtion_we_sent_code',
      desc: '',
      args: [],
    );
  }

  /// `Имя`
  String get chief_registrtion_name {
    return Intl.message(
      'Имя',
      name: 'chief_registrtion_name',
      desc: '',
      args: [],
    );
  }

  /// `Абай`
  String get chief_registrtion_sample_name {
    return Intl.message(
      'Абай',
      name: 'chief_registrtion_sample_name',
      desc: '',
      args: [],
    );
  }

  /// `Фамилия`
  String get chief_registrtion_lastname {
    return Intl.message(
      'Фамилия',
      name: 'chief_registrtion_lastname',
      desc: '',
      args: [],
    );
  }

  /// `Құнанбаев`
  String get chief_registrtion_sample_lastname {
    return Intl.message(
      'Құнанбаев',
      name: 'chief_registrtion_sample_lastname',
      desc: '',
      args: [],
    );
  }

  /// `Номер телефона`
  String get chief_registrtion_phone_number {
    return Intl.message(
      'Номер телефона',
      name: 'chief_registrtion_phone_number',
      desc: '',
      args: [],
    );
  }

  /// `+7(707) 707 00 77`
  String get chief_registrtion_sample_phone_number {
    return Intl.message(
      '+7(707) 707 00 77',
      name: 'chief_registrtion_sample_phone_number',
      desc: '',
      args: [],
    );
  }

  /// `Далее`
  String get chief_registrtion_next_button {
    return Intl.message(
      'Далее',
      name: 'chief_registrtion_next_button',
      desc: '',
      args: [],
    );
  }

  /// `Загрузите удостоверение`
  String get chief_registrtion_upload_id_card {
    return Intl.message(
      'Загрузите удостоверение',
      name: 'chief_registrtion_upload_id_card',
      desc: '',
      args: [],
    );
  }

  /// `Загрузите лицевую сторону вашего удостоверения чтобы подтвердить вашу личность.`
  String get chief_registrtion_upload_frontof_id_card {
    return Intl.message(
      'Загрузите лицевую сторону вашего удостоверения чтобы подтвердить вашу личность.',
      name: 'chief_registrtion_upload_frontof_id_card',
      desc: '',
      args: [],
    );
  }

  /// `Загрузите санитарную книжку`
  String get chief_registrtion_upload_med_card {
    return Intl.message(
      'Загрузите санитарную книжку',
      name: 'chief_registrtion_upload_med_card',
      desc: '',
      args: [],
    );
  }

  /// `Загрузите санитарную книжку, где можно увидеть следующие результаты медицинских анализов: `
  String get chief_registrtion_upload_med_card_with_datas {
    return Intl.message(
      'Загрузите санитарную книжку, где можно увидеть следующие результаты медицинских анализов: ',
      name: 'chief_registrtion_upload_med_card_with_datas',
      desc: '',
      args: [],
    );
  }

  /// `Общие анализы мочи и крови; `
  String get chief_registrtion_med_card_1 {
    return Intl.message(
      'Общие анализы мочи и крови; ',
      name: 'chief_registrtion_med_card_1',
      desc: '',
      args: [],
    );
  }

  /// `Биохимический анализ крови; `
  String get chief_registrtion_med_card_2 {
    return Intl.message(
      'Биохимический анализ крови; ',
      name: 'chief_registrtion_med_card_2',
      desc: '',
      args: [],
    );
  }

  /// `Анализ на гельминтозы;`
  String get chief_registrtion_med_card_3 {
    return Intl.message(
      'Анализ на гельминтозы;',
      name: 'chief_registrtion_med_card_3',
      desc: '',
      args: [],
    );
  }

  /// `Анализ кала на кишечные инфекции; `
  String get chief_registrtion_med_card_4 {
    return Intl.message(
      'Анализ кала на кишечные инфекции; ',
      name: 'chief_registrtion_med_card_4',
      desc: '',
      args: [],
    );
  }

  /// `Анализ на брюшной тиф; бруцеллез`
  String get chief_registrtion_med_card_5 {
    return Intl.message(
      'Анализ на брюшной тиф; бруцеллез',
      name: 'chief_registrtion_med_card_5',
      desc: '',
      args: [],
    );
  }

  /// `Анализ крови на сифилис\n обследование на скрытые половые инфекции; `
  String get chief_registrtion_med_card_6 {
    return Intl.message(
      'Анализ крови на сифилис\n обследование на скрытые половые инфекции; ',
      name: 'chief_registrtion_med_card_6',
      desc: '',
      args: [],
    );
  }

  /// `Флюорографическое исследование (ФЛГ).`
  String get chief_registrtion_med_card_7 {
    return Intl.message(
      'Флюорографическое исследование (ФЛГ).',
      name: 'chief_registrtion_med_card_7',
      desc: '',
      args: [],
    );
  }

  /// `Загрузите фото кухни`
  String get chief_registrtion_upload_kitchen_photo {
    return Intl.message(
      'Загрузите фото кухни',
      name: 'chief_registrtion_upload_kitchen_photo',
      desc: '',
      args: [],
    );
  }

  /// `Загрузите фотографии, чтобы было видно газовую плиту, холодильник, раковину, стол где вы будете готовить. Это делается для того, чтобы клиенты были уверены в чистоте вашей продукций.`
  String get chief_registrtion_upload_kitchen_photo_description {
    return Intl.message(
      'Загрузите фотографии, чтобы было видно газовую плиту, холодильник, раковину, стол где вы будете готовить. Это делается для того, чтобы клиенты были уверены в чистоте вашей продукций.',
      name: 'chief_registrtion_upload_kitchen_photo_description',
      desc: '',
      args: [],
    );
  }

  /// `Загрузить`
  String get chief_registrtion_upload {
    return Intl.message(
      'Загрузить',
      name: 'chief_registrtion_upload',
      desc: '',
      args: [],
    );
  }

  /// `Выберите категории блюд, которые вы будете готовить`
  String get select_category {
    return Intl.message(
      'Выберите категории блюд, которые вы будете готовить',
      name: 'select_category',
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
