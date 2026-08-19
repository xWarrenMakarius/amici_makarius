class AppConfig {

  AppConfig._internal({
    required this.getBaseUrl,
  });


  final String getBaseUrl;


  static AppConfig? _instance;

  static void initialize({
    required String getBaseUrl,
  }) {
    
    _instance = AppConfig._internal(
      getBaseUrl: getBaseUrl,
    );
  }

  static AppConfig get instance {
    if (_instance == null) {
      throw Exception("AppConfig is not initialized. Call AppConfig.initialize() first.");
    }
    return _instance!;
  }
}