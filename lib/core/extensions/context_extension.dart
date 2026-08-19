import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';


extension ContextExtensions on BuildContext {

  double get screenWidth => MediaQuery.of(this).size.width;
  double get screenHeight => MediaQuery.of(this).size.height;

  void nextFocus() => FocusScope.of(this).nextFocus();
  void previousFocus() => FocusScope.of(this).previousFocus();
  void unfocusAll() => FocusScope.of(this).unfocus();

  void openDrawer() {
    Scaffold.of(this).openDrawer();
  }

  void closeDrawer() {
    Navigator.of(this).pop();
  }

  void dismissKeyboard() {
    final FocusScopeNode currentFocus = FocusScope.of(this);
    if (!currentFocus.hasPrimaryFocus && currentFocus.focusedChild != null) {
      currentFocus.unfocus();
    }
  }
  
  void dismissDialog() {
    Future.delayed(const Duration(seconds: 1));
    if (!mounted) return;
    if (Navigator.canPop(this)) {
      pop();
    }
  }

  void dismissBottomSheet() {
    if (mounted && Navigator.of(this).canPop()) {
      Navigator.of(this).pop();
    }
  }
}