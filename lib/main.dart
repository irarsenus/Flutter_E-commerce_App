import 'package:flutter/material.dart';
import 'package:test_gura1/features/authentication/screens/onbaording.dart';
import 'package:test_gura1/utility/theme/Custom_theme/theme.dart';
import 'package:test_gura1/features/authentication/screens/onboarding.dart';


void main() {





  runApp(const App());
}

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
        themeMode: ThemeMode.system ,
  theme: TAppTheme.lightTheme,
      home:const OnBoardingScreen(),

      darkTheme: TAppTheme.darkTheme
    );
  }
}
