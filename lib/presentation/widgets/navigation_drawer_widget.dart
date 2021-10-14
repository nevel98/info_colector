import 'package:flutter/material.dart';

import 'package:info_colector/presentation/pages/home_page.dart';
import 'package:info_colector/presentation/pages/ipc_page.dart';
import 'package:info_colector/presentation/pages/settings_page.dart';
import 'package:info_colector/presentation/theme/theme.dart';

Widget crearMenu(BuildContext context) {
  return ClipRRect(
    borderRadius: const BorderRadius.only(bottomRight: Radius.circular(135)),
    child: Drawer(
      child: Container(
        color: Theme.of(context).scaffoldBackgroundColor,
        child: ListView(
          children: [
            DrawerHeader(
              decoration: const BoxDecoration(
                color: SigipColors.colorPrimaryStatusBarColor,
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: const [
                  Icon(Icons.face_sharp),
                  Text('MENU'),
                ],
              ),
            ),
            ListTile(
              contentPadding:
                  const EdgeInsets.only(top: -5.0, bottom: -30.0, left: 15.0),
              leading: const Icon(Icons.house),
              title:
                  Text('Inicio', style: Theme.of(context).textTheme.bodyText2),
              onTap: () {
                final route =
                    MaterialPageRoute(builder: (context) => MyHomePage());
                Navigator.of(context).pop();
                Navigator.pushAndRemoveUntil(context, route, (route) => false);
              },
            ),
            const Divider(),
            const ListTile(
              title: Text('Módulos'),
              enabled: false,
              contentPadding: EdgeInsets.only(left: 10.0),
            ),
            ListTile(
              contentPadding: const EdgeInsets.only(top: -5.0, left: 15.0),
              leading: const Icon(Icons.monetization_on_rounded),
              title: Text('IPC', style: Theme.of(context).textTheme.bodyText2),
              onTap: () {
                final route =
                    MaterialPageRoute(builder: (context) => IPCPage());
                Navigator.of(context).pop();
                Navigator.push(context, route);
              },
            ),
            const Divider(),
            ListTile(
              leading: const Icon(Icons.settings),
              title:
                  Text('Ajustes', style: Theme.of(context).textTheme.bodyText2),
              onTap: () {
                final route =
                    MaterialPageRoute(builder: (context) => SettingsPage());
                Navigator.of(context).pop();
                Navigator.push(context, route);
              },
            ),
          ],
        ),
      ),
    ),
  );
}
