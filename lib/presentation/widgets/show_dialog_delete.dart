import 'package:flutter/material.dart';
import 'package:info_colector/data/dataproviders/captation_provider.dart';
import 'package:info_colector/data/models/captacion_model.dart';

void dialogDelete(BuildContext context, CaptacionModel capta) {
  showDialog(
    useRootNavigator: false,
    context: context,
    barrierDismissible: false,
    builder: (context) {
      return AlertDialog(
        title: const Text('Eliminar Captación'),
        shape:
            RoundedRectangleBorder(borderRadius: BorderRadius.circular(20.0)),
        content: const Text('¿Seguro que desea borrar la captación?'),
        actions: [
          TextButton(
            child: Text(
              'Cancelar',
              style: Theme.of(context).textTheme.bodyText2,
            ),
            onPressed: () {
              Navigator.pop(context);
            },
          ),
          TextButton(
            child: const Text(
              'Eliminar',
              style: TextStyle(color: Colors.red),
            ),
            onPressed: () {
              CaptacionProvider().deleteCaptacion(capta.ci!);
              Navigator.pop(context);
              Navigator.pop(context);
            },
          )
        ],
      );
    },
  );
}
