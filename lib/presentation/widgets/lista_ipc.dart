import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:info_colector/presentation/pages/lista_captaciones_page.dart';
import 'package:info_colector/presentation/theme/theme.dart';

class ListaIPC extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Table(
      children: [
        TableRow(
          children: [
            _crearBoton(
              context,
              Icons.monetization_on,
              'Captaciones',
              ListaCaptacionesPage(),
            ),
            _crearBoton(
              context,
              Icons.search_off,
              'Cosa',
              ListaCaptacionesPage(),
            )
          ],
        ),
        TableRow(
          children: [
            _crearBoton(
              context,
              Icons.swap_calls,
              'Cosa',
              ListaCaptacionesPage(),
            ),
            _crearBoton(
              context,
              Icons.swap_calls,
              'Cosa',
              ListaCaptacionesPage(),
            )
          ],
        ),
        TableRow(
          children: [
            _crearBoton(
              context,
              Icons.swap_calls,
              'Cosa',
              ListaCaptacionesPage(),
            ),
            _crearBoton(
              context,
              Icons.swap_calls,
              'Cosa',
              ListaCaptacionesPage(),
            )
          ],
        ),
        TableRow(
          children: [
            _crearBoton(
              context,
              Icons.swap_calls,
              'Cosa',
              ListaCaptacionesPage(),
            ),
            _crearBoton(
              context,
              Icons.swap_calls,
              'Cosa',
              ListaCaptacionesPage(),
            )
          ],
        ),
      ],
    );
  }

  Widget _crearBoton(
    BuildContext context,
    IconData icono,
    String texto,
    Widget routeTo,
  ) {
    return InkWell(
      onTap: () {
        final route = MaterialPageRoute(builder: (context) => routeTo);
        Navigator.push(context, route);
      },
      child: Container(
        height: 150.0,
        margin: const EdgeInsets.all(15.0),
        decoration: BoxDecoration(
          color: const Color.fromRGBO(62, 66, 107, 0.7),
          borderRadius: BorderRadius.circular(20.0),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: CircleAvatar(
                backgroundColor: SigipColors.colorPrimary,
                radius: 30.0,
                child: Icon(icono, color: Colors.white, size: 30.0),
              ),
            ),
            Text(texto, style: Theme.of(context).textTheme.bodyText1),
            const SizedBox(height: 5.0)
          ],
        ),
      ),
    );
  }
}
