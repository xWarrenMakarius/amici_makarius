import 'package:get_it/get_it.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../core/data/remote_sources/auth_remote_source_impl.dart';
import '../core/data/repositories/auth_repository_impl.dart';
import '../core/domain/service/api_service.dart';
import '../core/domain/usecases/forgot_password_usecase.dart';
import '../core/domain/usecases/login_usecase.dart';
import '../core/extensions/get_it_extension.dart';
import 'shared_preferences_manager.dart';

part 'app.dart';

final getIt = GetIt.I;

Future<void> initDependencies() async {

  
  // App
  await _initApp();
}