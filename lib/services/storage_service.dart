import 'package:tutorial/constants/data_constants.dart';
import 'package:tutorial/constants/storage_keys.dart';
import 'package:tutorial/di.dart';
import 'package:tutorial/libraries/local_storage.dart';

class StorageService {
  var _storage = sl<LocalStorage>();

  Future<void> removeData({required String key}) => _storage.removeData(key: key);

  String get language => _storage.readData(key: LANGUAGE) ?? DEFAULT_LANGUAGE;
  void setLanguage(String data) => _storage.storeData(key: LANGUAGE, value: data);
}
