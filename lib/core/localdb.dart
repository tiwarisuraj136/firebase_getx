import 'dart:developer';
import 'package:hive/hive.dart';
import 'package:path_provider/path_provider.dart';

class AppPreferences {
  // Private Constructor
  AppPreferences._privateConstructor();  //This private constructor prevents the creation of instances from outside the class.
  // Static Instance
  static final AppPreferences _instance = AppPreferences._privateConstructor(); // A static final instance _instance is created using the private constructor.

//  Public Getter
  static AppPreferences get instance => _instance; // The instance getter provides access to the singleton instance.
// Hive Initialization
  //Late Variable for Hive Box:
  //A late variable _box is declared to hold the Hive box, which will store the application preferences.
  late Box<dynamic> _box;


  // Initialization Method
  Future<void> init() async {
    log('hive intialized cld');
    final appDocumentDir = await getApplicationDocumentsDirectory();
    Hive.init(appDocumentDir.path);
    _box = await Hive.openBox('firebasegetx');
  }

//  Getter for the Hive Box

  Box<dynamic> get hiveDb => _box;  //This getter provides access to the Hive box directly.


  // Preference Fields

  String get email => _box.get('email') ?? '';
  set email(String value) => _box.put('email', value);

  String get id => _box.get('id') ?? '';
  set id(String value) => _box.put('id', value);

  String get name => _box.get('name') ?? '';
  set name(String value) => _box.put('name', value);


  String get password => _box.get('password') ?? '';
  set password(String value) => _box.put('password', value);

  String get gender => _box.get('gender') ?? '';
  set gender(String value) => _box.put('gender', value);

  String get programLang => _box.get('programLang') ?? '';
  set programLang(String value) => _box.put('programLang', value);

  String get languageHindi => _box.get('languageHindi') ?? '';
  set languageHindi(String value) => _box.put('languageHindi', value);

  String get languageEnglish => _box.get('languageEnglish') ?? '';
  set languageEnglish(String value) => _box.put('languageEnglish', value);

  bool get isLogin => _box.get('isLogin') ?? false;
  set isLogin(bool value) => _box.put('isLogin', value);
}