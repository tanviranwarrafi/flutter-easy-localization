import 'package:get_it/get_it.dart';
import 'package:tutorial/libraries/local_storage.dart';
import 'package:tutorial/services/storage_service.dart';

final sl = GetIt.instance;

Future<void> init() async {
  /// Libraries
  sl.registerLazySingleton<LocalStorage>(LocalStorage.new);

  /// Services
  sl.registerLazySingleton<StorageService>(StorageService.new);
}
