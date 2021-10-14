import 'package:flutter/material.dart';
import 'package:info_colector/presentation/pages/settings_page.dart';
import 'package:info_colector/presentation/theme/theme.dart';

class PopMenu extends StatelessWidget {
  const PopMenu({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return PopupMenuButton(
      itemBuilder: (BuildContext context) {
        return [
          PopupMenuItem(
            value: 'Ajustes',
            child: Row(
              children: const [
                Icon(
                  Icons.settings,
                  color: SigipColors.colorPrimary,
                ),
                SizedBox(
                  width: 10.0,
                ),
                Text('Ajustes'),
              ],
            ),
          ),
        ];
      },
      padding: const EdgeInsets.all(15.0),
      elevation: 3.0,
      offset: const Offset(1.0, 0.0),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10.0)),
      icon: const Icon(
        Icons.more_vert,
        color: SigipColors.colorPrimary,
      ),
      onSelected: (selectedItem) async {
        switch (selectedItem) {
          case 'Ajustes':
            final route =
                MaterialPageRoute(builder: (context) => SettingsPage());
            Navigator.push(context, route);
            break;
        }
      },
    );
  }
}
