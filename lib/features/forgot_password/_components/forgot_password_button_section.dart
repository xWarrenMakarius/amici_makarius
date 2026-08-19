import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

import '../../../core/common/common_elevated_button.dart';
import '../../../core/extensions/context_extension.dart';
import '../../../core/resources/app_routes.dart';
import '../../../core/resources/colors.dart';
import '../../../core/resources/dimensions.dart';
import '../../../core/utils/snackbar_utils.dart';
import '../bloc/forgot_password/forgot_password_bloc.dart';

class ForgotPasswordButtonSection extends StatefulWidget {
  const ForgotPasswordButtonSection({
    super.key,
    required this.setLoading,
    required this.doForgotPassword,
    required this.goToLogin,
  });

  final Function(bool value) setLoading;
  final VoidCallback doForgotPassword;
  final VoidCallback goToLogin;

  @override
  State<ForgotPasswordButtonSection> createState() => _ForgotPasswordButtonSectionState();
}

class _ForgotPasswordButtonSectionState extends State<ForgotPasswordButtonSection> {

  bool isLoading = false;

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<ForgotPasswordBloc, ForgotPasswordState>(
      listener: (context, state) {
        if (state is LoadingState) {
          widget.setLoading(true);
          isLoading = true;
        } else if (state is SuccessState) {
          widget.setLoading(false);
          isLoading = false;
          context.go(AppRoutes.login);
          SnackbarUtils.showSuccess(
            context,
            message: state.message,
          );
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
        return Column(
          children: [
            Container(
              height: 50,
              width: context.screenWidth,
              padding: const EdgeInsets.symmetric(horizontal: Dimensions.paddingMedium),
              margin: const EdgeInsets.symmetric(vertical: Dimensions.marginMedium),
              child: CommonElevatedButton(
                onButtonPressed: isLoading ? null : widget.doForgotPassword,
                isPrimaryLoading: true,
                custom: isLoading
                ? const SizedBox(
                  height: 24,
                  width: 24,
                  child: CircularProgressIndicator(
                    color: CustomColors.black,
                    strokeWidth: 3,
                  ),
                )
                : const Text(
                  "Submit",
                  style: TextStyle(
                    color: CustomColors.black,
                    fontSize: 16.0,
                    fontWeight: FontWeight.w600
                  ),
                )
              ),
            ),
            Container(
              height: 50,
              width: context.screenWidth,
              padding: const EdgeInsets.symmetric(horizontal: Dimensions.paddingMedium),
              child: CommonElevatedButton(
                onButtonPressed: widget.goToLogin,
                backgroundColor: Colors.transparent,
                overlayColor: CustomColors.primary.withValues(alpha: 0.8),
                borderSide: const BorderSide(color: CustomColors.primary),
                text: 'Back',
              ),
            ),
          ],
        );
      }
    );
  }
}