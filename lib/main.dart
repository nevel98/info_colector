import 'package:easy_dynamic_theme/easy_dynamic_theme.dart';
import 'package:flutter/material.dart';
import 'package:info_colector/data/dataproviders/db_provider.dart';

import 'app.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await DBProvider.db.initDB();
  runApp(EasyDynamicThemeWidget(child: MyApp()));
}
