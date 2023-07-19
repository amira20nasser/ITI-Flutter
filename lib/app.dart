import 'package:flutter/material.dart';

import 'screens/home_screen.dart';

class AinshamsDayOne extends StatelessWidget {
  const AinshamsDayOne({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Day one",
      home: HomeScreen(),
      debugShowCheckedModeBanner: false,
    );
  }
}
