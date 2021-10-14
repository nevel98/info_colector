import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:info_colector/data/models/captacion_model.dart';
import 'package:info_colector/data/models/casa_model.dart';
import 'package:info_colector/data/models/direccion_model.dart';
import 'package:info_colector/data/models/fmc_model.dart';
import 'package:info_colector/data/models/situacion_salud_model.dart';
import 'package:info_colector/presentation/theme/theme.dart';
import 'package:info_colector/presentation/widgets/show_dialog_delete.dart';

import '../pages/visualizar_captaciones_page.dart';

void showPopMenuCaptaciones(
    BuildContext context,
    CaptacionModel element,
    CasaModel? casa,
    DireccionModel? dire,
    FMCModel? fmc,
    List<SituacionSaludModel>? salud) {
  final nameShort = element.nombre!.split(" ").toList().elementAt(0) +
      " " +
      element.nombre!.split(" ").toList().elementAt(1);
  showDialog(
      useRootNavigator: false,
      context: context,
      barrierDismissible: false,
      builder: (context) {
        return AlertDialog(
            actions: [
              TextButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  child: Text('Canselar'))
            ],
            // title: const Text('Opciones'),
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20.0)),
            content: Column(mainAxisSize: MainAxisSize.min, children: [
              Row(
                children: [
                  Text('$nameShort',
                      style: TextStyle(fontSize: 15.0, color: Colors.blue)),
                  PopupMenuButton(
                    itemBuilder: (BuildContext context) {
                      return [
                        PopupMenuItem(
                          value: 'editar',
                          child: Row(
                            children: const [
                              Icon(
                                Icons.edit,
                                color: SigipColors.colorPrimary,
                              ),
                              SizedBox(
                                width: 10.0,
                              ),
                              Text('Editar Captación'),
                            ],
                          ),
                        ),
                        PopupMenuItem(
                          value: 'visualizar',
                          child: Row(
                            children: const [
                              Icon(
                                Icons.remove_red_eye,
                                color: SigipColors.colorPrimary,
                              ),
                              SizedBox(
                                width: 10.0,
                              ),
                              Text('Visualizar Captación'),
                            ],
                          ),
                        ),
                        PopupMenuItem(
                          value: 'delete',
                          child: Row(
                            children: const [
                              Icon(
                                Icons.delete,
                                color: SigipColors.colorPrimary,
                              ),
                              SizedBox(
                                width: 10.0,
                              ),
                              Text('Eliminar Captación'),
                            ],
                          ),
                        ),
                      ];
                    },
                    padding: const EdgeInsets.all(15.0),
                    elevation: 3.0,
                    offset: const Offset(1.0, 0.0),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10.0)),
                    icon: const Icon(
                      Icons.more_vert,
                      color: SigipColors.colorPrimary,
                    ),
                    onSelected: (selectedItem) async {
                      switch (selectedItem) {
                        case 'editar':
                          /*   final route = MaterialPageRoute(
                    builder: (context) => EditarCaptacionesPage());
            Navigator.push(context, route);
           */
                          break;
                        case 'visualizar':
                          final route = MaterialPageRoute(
                            settings:
                                RouteSettings(arguments: [element, casa, dire]),
                            builder: (context) => VisualizarCaptacionesPage(),
                          );
                          Navigator.pop(context);
                          Navigator.push(context, route);
                          break;
                        case 'delete':
                          Navigator.pop(context);
                          dialogDelete(context, element);

                          // Fluttertoast.showToast(
                          //   msg: 'Borraste la captación',
                          //   toastLength: Toast.LENGTH_SHORT,
                          //   gravity: ToastGravity.BOTTOM,
                          //   backgroundColor: Colors.red,
                          //   textColor: Colors.yellow,
                          // );
                          break;
                      }
                    },
                  ),
                ],
              )
            ]));
      });
}
