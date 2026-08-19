import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

import '../../../core/common/common_elevated_button.dart';
import '../../../core/extensions/context_extension.dart';
import '../../../core/resources/app_routes.dart';
import '../../../core/resources/colors.dart';
import '../../../core/resources/dimensions.dart';
import '../../../core/utils/snackbar_utils.dart';
import '../bloc/login/login_bloc.dart';

class LoginButtonSection extends StatefulWidget {
  const LoginButtonSection({
    super.key,
    required this.setLoading,
    required this.doLogin,
  });

  final Function(bool value) setLoading;
  final VoidCallback doLogin;

  @override
  State<LoginButtonSection> createState() => _LoginButtonSectionState();
}

class _LoginButtonSectionState extends State<LoginButtonSection> {

  bool isLoading = false;

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<LoginBloc, LoginState>(
      listener: (context, state) {
        if (state is LoadingState) {
          widget.setLoading(true);
          isLoading = true;
        } else if (state is SuccessState) {
          widget.setLoading(false);
          isLoading = false;
          context.go(AppRoutes.dashboard);
        } else if (state is ErrorState) {
          widget.setLoading(false);
          isLoading = false;
          SnackbarUtils.showError(
            context,
            message: state.message,
          );
        }
      },
      builder: (context, state) {
        return Container(
          height: 50,
          width: context.screenWidth,
          padding: const EdgeInsets.symmetric(horizontal: Dimensions.paddingMedium),
          margin: const EdgeInsets.symmetric(vertical: Dimensions.marginMedium),
          child: CommonElevatedButton(
            onButtonPressed: isLoading ? null : widget.doLogin,
            isPrimaryLoading: true,
            custom: isLoading
            ? const Row(
              mainAxisAlignment: MainAxisAlignment.center,
              spacing: Dimensions.spacingSmall,
              children: [
                SizedBox(
                  height: 24,
                  width: 24,
                  child: CircularProgressIndicator(
                    color: CustomColors.black,
                    strokeWidth: 3,
                  ),
                ),
                Text(
                  "Logging in...",
                  style: TextStyle(
                    color: CustomColors.black,
                    fontSize: 16.0,
                    fontWeight: FontWeight.w600
                  ),
                ),
              ],
            )
            : const Text(
              "Login",
              style: TextStyle(
                color: CustomColors.black,
                fontSize: 16.0,
                fontWeight: FontWeight.w600
              ),
            )
          ),
        );
      }
    );
  }
}