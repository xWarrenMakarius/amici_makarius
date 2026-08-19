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
import '_components/login_button_section.dart';
import 'bloc/login/login_bloc.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {

  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();

  final _emailNode = FocusNode();
  final _passwordNode = FocusNode();

  bool _isChecked = false;
  bool _isLoading = false;

  void _doLogin() {
    context.read<LoginBloc>().add(
      DoLoginEvent(
        email: _emailController.text, 
        password: _passwordController.text
      ),
    );
  }

  void setLoading(bool value) {
    setState(() {
      _isLoading = value;
    });
  }

  void _onChecked(bool? value) {
    setState(() {
      _isChecked = value ?? false;
    });
  }

  void _goToRegister() {
    context.push(AppRoutes.register);
  }

  void _goToForgotPassword() {
    context.push(AppRoutes.forgotPassword);
  }

  @override
  void dispose() {
    super.dispose();
    _emailController.dispose();
    _emailNode.dispose();
    _passwordController.dispose();
    _passwordNode.dispose();
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
              child: SingleChildScrollView(
                child: Container(
                  width: context.screenWidth,
                  margin: const EdgeInsets.all(Dimensions.marginMedium),
                  decoration: BoxDecoration(
                    color: CustomColors.white,
                    borderRadius: BorderRadius.circular(Dimensions.radiusMedium),
                    border: Border.all(color: CustomColors.gray2)
                  ),
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
                          focusNode: _emailNode,
                          isEnabled: !_isLoading,
                          readOnly: _isLoading,
                          helperText: "Email",
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
                      const SizedBox(height: Dimensions.spacingSmall),
                      Padding(
                        padding: const EdgeInsets.symmetric(
                          horizontal: Dimensions.paddingMedium,
                        ),
                        child: CommonTextField(
                          controller: _passwordController,
                          focusNode: _passwordNode,
                          maxLines: 1,
                          hasShowHideTextIcon: true,
                          isEnabled: !_isLoading,
                          readOnly: _isLoading,
                          helperText: "Password",
                          helperTextStyle: const TextStyle(
                            color: CustomColors.black,
                            fontSize: 14,
                            fontWeight: FontWeight.w500,
                          ),
                          helperPadding: const EdgeInsets.only(bottom: Dimensions.paddingExtraSmall),
                          hintText: "Enter your password",
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
                      Row(
                        children: [
                          Checkbox(
                            value: _isChecked,
                            onChanged: _onChecked,
                            activeColor: CustomColors.primary,
                          ),
                          const Text(
                            "Remember Me",
                            style: TextStyle(
                              color: CustomColors.gray,
                              fontSize: 14.0,
                              fontWeight: FontWeight.w300
                            ),
                          ),
                          const Spacer(),
                          Padding(
                            padding: const EdgeInsets.only(right: Dimensions.paddingMedium),
                            child: GestureDetector(
                              onTap: _goToForgotPassword,
                              child: const Text(
                                "Forgot Password?",
                                style: TextStyle(
                                  color: CustomColors.primary,
                                  fontSize: 12,
                                  fontWeight: FontWeight.w500,
                                  decoration: TextDecoration.underline,
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                      LoginButtonSection(
                        setLoading: setLoading, 
                        doLogin: _doLogin
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        spacing: Dimensions.spacingExtraSmall,
                        children: [
                          const Text(
                            "Not Registered Yet?",
                            style: TextStyle(
                              color: CustomColors.gray,
                              fontSize: 14,
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                          GestureDetector(
                            onTap: _goToRegister,
                            child: const Text(
                              "Create an account",
                              style: TextStyle(
                                color: CustomColors.primary,
                                fontSize: 14,
                                fontWeight: FontWeight.w500,
                                decoration: TextDecoration.underline,
                              ),
                            ),
                          ),
                        ],
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