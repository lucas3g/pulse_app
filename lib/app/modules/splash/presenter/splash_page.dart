import 'package:flutter/material.dart';

import '../../../core/domain/entities/app_assets.dart';
import '../../../shared/extensions/build_context_extension.dart';

class SplashPage extends StatefulWidget {
  const SplashPage({super.key});

  @override
  State<SplashPage> createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  Future<void> _init() async {
    await Future<void>.delayed(const Duration(seconds: 2), () {
      Navigator.pushReplacementNamed(context, '/home');
    });
  }

  @override
  void initState() {
    super.initState();

    _init();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Image.asset(
          AppAssets.logo,
          width: context.screenWidth * .8,
        ),
      ),
    );
  }
}
