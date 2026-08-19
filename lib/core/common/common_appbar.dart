import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:go_router/go_router.dart';
import '../resources/colors.dart';

class CommonAppBar extends AppBar {

  CommonAppBar({
    super.key, 
    this.appBarTitle = "",
    this.onTap,
    this.action,
    this.actionTextColor,
    this.titleCenter = false,
    this.isLoading = false,
    this.bg = CustomColors.black,
    this.overlay,
    this.isHaveBackButton = true,
    this.onBottom,
  }) : super(
    backgroundColor: bg,
    systemOverlayStyle: overlay,
    leading: isHaveBackButton ? 
    Builder(
      builder: (context) {
        return GestureDetector(
          onTap: onTap ?? context.pop,
          child: const Icon(
            Icons.arrow_back_ios_new_rounded,
            color: CustomColors.white,
            size: 20.0
          ),
        );
      }
    )
    : null,
    surfaceTintColor: CustomColors.white,
    title: appBarTitle.isEmpty
    ? const SizedBox.shrink()
    : Text(appBarTitle),
    titleSpacing: 0.0,
    centerTitle: titleCenter,
    actions: action,
    bottom: onBottom
  );

  final String appBarTitle;
  final VoidCallback? onTap;
  final List<Widget>? action;
  final Color? actionTextColor;
  final bool isLoading;
  final bool? titleCenter;
  final Color bg;
  final SystemUiOverlayStyle? overlay;
  final bool isHaveBackButton;
  final PreferredSizeWidget? onBottom;
}