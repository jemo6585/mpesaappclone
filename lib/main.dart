import 'package:flutter/material.dart';

import 'package:mpesaappclone/pages/login.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: const LoginPage(),
      theme:
          ThemeData(useMaterial3: true, primaryColor: Colors.lightGreenAccent),
    );
  }
}
