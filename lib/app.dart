import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iecommerce/features/authentication/screens/login/login.dart';
import 'package:iecommerce/features/authentication/screens/onboarding/onboarding.dart';
import 'package:iecommerce/utils/constants/colors.dart';
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
      home: const Scaffold(backgroundColor: TColors.primary, body: Center(child: CircularProgressIndicator(color: TColors.white))),
      // home: const OnBoardingScreen(),
    );
  }
}

// class _AppState extends State<App> {
//   int _counter = 0;
//   String _lastMessage = "";
//
//   _AppState() {
//     _messageStreamController.listen((message) {
//       setState(() {
//         if (message.notification != null) {
//           _lastMessage = 'Received a notification message:'
//               '\nTitle=${message.notification?.title},'
//               '\nBody=${message.notification?.body},'
//               '\nData=${message.data}';
//         } else {
//           _lastMessage = 'Received a data message: ${message.data}';
//         }
//       });
//     });
//   }
// }