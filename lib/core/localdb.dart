import 'dart:developer';
import 'package:hive/hive.dart';
import 'package:path_provider/path_provider.dart';

class AppPreferences {
  AppPreferences._privateConstructor();
  static final AppPreferences _instance = AppPreferences._privateConstructor();

  static AppPreferences get instance => _instance;

  late Box<dynamic> _box;

  Future<void> init() async {
    log('hive intialized cld');
    final appDocumentDir = await getApplicationDocumentsDirectory();
    Hive.init(appDocumentDir.path);
    _box = await Hive.openBox('cineverse');
  }

  Box<dynamic> get hiveDb => _box;

  String get email => _box.get('email') ?? '';
  set email(String value) => _box.put('email', value);

  String get id => _box.get('id') ?? '';
  set id(String value) => _box.put('id', value);

  String get name => _box.get('name') ?? '';
  set name(String value) => _box.put('name', value);


  String get password => _box.get('password') ?? '';
  set password(String value) => _box.put('password', value);



  bool get isLogin => _box.get('isLogin') ?? false;
  set isLogin(bool value) => _box.put('isLogin', value);
}