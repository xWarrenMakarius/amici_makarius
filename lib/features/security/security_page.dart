import 'package:flutter/material.dart';
import 'package:developer_mode/developer_mode.dart';

import '../../core/resources/colors.dart';
import '../login/login_page.dart';

class SecurityPage extends StatefulWidget {
  const SecurityPage({super.key});

  @override
  State<SecurityPage> createState() => _SecurityPageState();
}

class _SecurityPageState extends State<SecurityPage> {
  bool _isLoading = true;
  bool _isBlocked = false;

  @override
  void initState() {
    super.initState();
    _checkSecurity();
  }

  Future<void> _checkSecurity() async {
    try {
      final isJailbroken = await DeveloperMode.isJailbroken;
      final isDeveloperMode = await DeveloperMode.isDeveloperMode;

      if (!mounted) return;

      setState(() {
        _isBlocked = isJailbroken || isDeveloperMode;
        _isLoading = false;
      });
    } catch (e) {
      if (!mounted) return;

      setState(() {
        _isLoading = false;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    if (_isLoading) {
      return const Scaffold(
        body: Center(
          child: CircularProgressIndicator(
            color: CustomColors.primary,
          ),
        ),
      );
    }

    if (!_isBlocked) {
      return const Scaffold(
        body: Center(
          child: Text(
            'Please disable Developer Mode on your settings.',
            style: TextStyle(
              color: CustomColors.gray,
              fontSize: 14.0,
              fontWeight: FontWeight.w400
            ),
          ),
        ),
      );
    }

    return const LoginPage();
  }
} 