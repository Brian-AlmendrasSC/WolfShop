import 'package:flutter/material.dart';
import 'package:wolfshop/src/components/home_page/home_page.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: "Wolf Shop",
      home: HomePage(),
    );
  }
}
