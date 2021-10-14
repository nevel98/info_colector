import 'package:easy_dynamic_theme/easy_dynamic_theme.dart';
import 'package:flutter/material.dart';
import 'package:info_colector/presentation/pages/home_page.dart';
import 'package:info_colector/presentation/theme/theme.dart';

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MyHomePage(),
      theme: lightTheme,
      darkTheme: darkTheme,
      themeMode: EasyDynamicTheme.of(context).themeMode,
    );
  }
}
