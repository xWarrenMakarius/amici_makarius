import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

import '../../core/common/common_image.dart';
import '../../core/common/common_text_field.dart';
import '../../core/extensions/context_extension.dart';
import '../../core/resources/app_routes.dart';
import '../../core/resources/assets.dart';
import '../../core/resources/colors.dart';
import '../../core/resources/dimensions.dart';
import '_components/forgot_password_button_section.dart';
import 'bloc/forgot_password/forgot_password_bloc.dart';

class ForgotPasswordPage extends StatefulWidget {
  const ForgotPasswordPage({super.key});

  @override
  State<ForgotPasswordPage> createState() => _ForgotPasswordPageState();
}

class _ForgotPasswordPageState extends State<ForgotPasswordPage> {

  final _emailController = TextEditingController();

  bool _isLoading = false;

  void _doForgotPassword() {
    context.read<ForgotPasswordBloc>().add(DoForgotPasswordEvent(_emailController.text));
  }

  void setLoading(bool value) {
    setState(() {
      _isLoading = value;
    });
  }

  void _goToLogin() {
    context.go(AppRoutes.login);
  }

  @override
  void dispose() {
    super.dispose();
    _emailController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return AnnotatedRegion<SystemUiOverlayStyle>(
      value: const SystemUiOverlayStyle(
        statusBarColor: Colors.transparent,
        statusBarBrightness: Brightness.dark,
        statusBarIconBrightness: Brightness.light
      ),
      child: Scaffold(
        body: Container(
          width: double.infinity,
          height: double.infinity,
          decoration: const BoxDecoration(
            image: DecorationImage(
              image: AssetImage(Assets.bg),
              fit: BoxFit.cover,
            ),
          ),
          child: SafeArea(
            child: Center(
              child: Container(
                width: context.screenWidth,
                margin: const EdgeInsets.all(Dimensions.marginMedium),
                decoration: BoxDecoration(
                  color: CustomColors.white,
                  borderRadius: BorderRadius.circular(Dimensions.radiusMedium),
                  border: Border.all(color: CustomColors.gray2)
                ),
                child: SingleChildScrollView(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      const CommonImage(
                        path: Assets.arc,
                        height: 126,
                        width: 126,
                      ),
                      const Text(
                        "Login to your Account",
                        style: TextStyle(
                          color: CustomColors.black,
                          fontSize: 20
                        ),
                      ),
                      const SizedBox(height: Dimensions.spacingExtraSmall),
                      const Text(
                        "See what is going with your business",
                        style: TextStyle(
                          color: CustomColors.gray,
                          fontSize: 14,
                          fontWeight: FontWeight.w400
                        ),
                      ),
                      const SizedBox(height: Dimensions.spacingLarge),
                      Padding(
                        padding: const EdgeInsets.symmetric(
                          horizontal: Dimensions.paddingMedium,
                        ),
                        child: CommonTextField(
                          controller: _emailController,
                          isEnabled: !_isLoading,
                          readOnly: _isLoading,
                          helperText: "Forgot Password",
                          helperTextStyle: const TextStyle(
                            color: CustomColors.black,
                            fontSize: 14,
                            fontWeight: FontWeight.w500,
                          ),
                          helperPadding: const EdgeInsets.only(bottom: Dimensions.paddingExtraSmall),
                          hintText: "Enter your email",
                          hintTextStyle: const TextStyle(
                            color: CustomColors.gray2,
                            fontSize: 14,
                            fontWeight: FontWeight.w400,
                          ),
                          textStyle: const TextStyle(
                            color: CustomColors.black,
                            fontSize: 14,
                          ),
                        ),
                      ),
                      
                      ForgotPasswordButtonSection(
                        setLoading: setLoading, 
                        doForgotPassword: _doForgotPassword,
                        goToLogin: _goToLogin,
                      ),
                      const SizedBox(height: Dimensions.spacingMedium),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}