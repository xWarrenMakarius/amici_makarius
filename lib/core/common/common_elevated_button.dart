import 'package:flutter/material.dart';

import '../resources/colors.dart';

class CommonElevatedButton extends ElevatedButton {
  CommonElevatedButton({
    super.key,
    this.onButtonPressed,
    this.text,
    this.custom,
    this.isLoading = false,
    this.fontColor = CustomColors.gray,
    this.fontWeight = FontWeight.w600,
    this.fontSize = 16,
    this.borderRadius = const BorderRadius.all(Radius.circular(8.0)),
    this.elevation = 8,
    this.borderSide = BorderSide.none,
    this.padding,
    this.backgroundColor = CustomColors.primary,
    this.shadowColor = Colors.transparent,
    this.overlayColor = CustomColors.black,
    this.shape,
    this.isPrimaryLoading = false,
  })  : assert(text != null || custom != null),
        super(
          onPressed: isLoading ? null : onButtonPressed,
          child: isLoading
              ? SizedBox(
                  height: 20,
                  width: 20,
                  child: CircularProgressIndicator(
                    strokeWidth: 3,
                    color: isPrimaryLoading
                        ? CustomColors.primary
                        : CustomColors.gray4,
                  ),
                )
              : text != null
                  ? Text(
                      text,
                      textAlign: TextAlign.center,
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                      style: TextStyle(
                        fontSize: fontSize,
                        fontFamily: 'Poppins',
                        fontWeight: fontWeight,
                        color: fontColor,
                      ),
                    )
                  : custom,
          style: ElevatedButton.styleFrom(
            shadowColor: shadowColor,
            backgroundColor: isLoading
                ? isPrimaryLoading
                    ? CustomColors.primary.withValues(alpha: 0.5)
                    : CustomColors.gray
                : backgroundColor,
            overlayColor: overlayColor,
            elevation: elevation,
            shape: shape ??
                RoundedRectangleBorder(
                  borderRadius: borderRadius,
                  side: borderSide,
                ),
            padding: padding,
            disabledBackgroundColor: isPrimaryLoading
                ? CustomColors.primary.withValues(alpha: 0.5)
                : CustomColors.lightGray,
          ),
        );

  final VoidCallback? onButtonPressed;
  final String? text;
  final Widget? custom;
  final bool isLoading;
  final Color fontColor;
  final Color backgroundColor;
  final Color shadowColor;
  final Color overlayColor;
  final FontWeight fontWeight;
  final double fontSize;
  final BorderRadiusGeometry borderRadius;
  final BorderSide borderSide;
  final double elevation;
  final EdgeInsetsGeometry? padding;
  final OutlinedBorder? shape;
  final bool isPrimaryLoading;
}