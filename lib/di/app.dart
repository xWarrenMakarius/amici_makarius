part of '_dependencies.dart';

Future<void> _initApp() async {

  getIt.registerLazySingletonAsync<SharedPreferences>(() async => await SharedPreferences.getInstance());
  await getIt.isReady<SharedPreferences>();
  getIt.registerSingletonWithLog<SharedPreferencesManager>(SharedPreferencesManager(getIt<SharedPreferences>()));

  //Services
  getIt.registerSingletonWithLog<ApiService>(ApiService());


  //Remote Sources
  getIt.registerSingletonWithLog<AuthRemoteSource>(AuthRemoteSourceImpl());
  

  //Repositories
  getIt.registerSingletonWithLog<AuthRepository>(AuthRepositoryImpl(authRemoteSource: getIt()));


  //UseCases
  getIt.registerSingletonWithLog<LoginUseCase>(LoginUseCase(getIt()));
  getIt.registerSingletonWithLog<ForgotPasswordUseCase>(ForgotPasswordUseCase(getIt()));
  
}