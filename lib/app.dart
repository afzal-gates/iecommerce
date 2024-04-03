import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iecommerce/features/authentication/screens/onboarding/onboarding.dart';
import 'package:iecommerce/utils/theme/theme.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Flutter Demo',
      themeMode: ThemeMode.system,
      theme: IAppTheme.lightTheme,
      darkTheme: IAppTheme.darkTheme,
      home: const OnBoardingScreen(),
    );
  }
}

