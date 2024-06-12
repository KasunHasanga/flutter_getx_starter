
import 'package:get/get.dart';
import 'english.dart';
import 'sinhala.dart';

class AppTranslations extends Translations {
  @override
  Map<String, Map<String, String>> get keys => {
    'en': EnglishTranslations.enText,
    'si': SinhalaTranslations.slText,

  };
}