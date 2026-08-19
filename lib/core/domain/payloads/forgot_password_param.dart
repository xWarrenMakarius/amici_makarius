class ForgotPasswordParam {

  ForgotPasswordParam({
    required this.email,
  });

  final String email;


  Map<String, Object> toJson() => {
    'email': email,
  };
}