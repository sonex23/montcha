import 'package:flutter/material.dart';
import 'package:montcha/ui/pages/main_page.dart';
import 'package:montcha/ui/pages/sign_in.dart';
import 'package:montcha/ui/pages/sign_up.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Mountcha\'',
      routes: {
        '/': (context) => const SignUpPage(),
        '/sign-in': (context) => const SignInPage(),
        '/main': (context) => const MainPage(),
      },
    );
  }
}
