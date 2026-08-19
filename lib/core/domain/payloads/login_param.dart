class LoginParam {

  LoginParam({
    required this.email,
    required this.password,
    required this.deviceIds,
    required this.deviceFingerPrint,
  });

  final String email;
  final String password;
  final List<String> deviceIds;
  final String deviceFingerPrint;

  Map<String, Object> toJson() => {
    'email': email,
    'password': password,
    'device_ids': deviceIds,
    'device_fingerprint': deviceFingerPrint,
  };

}