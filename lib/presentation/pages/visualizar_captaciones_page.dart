import 'package:flutter/material.dart';
import 'package:info_colector/data/models/captacion_model.dart';
import 'package:info_colector/data/models/casa_model.dart';
import 'package:info_colector/data/models/direccion_model.dart';
import 'package:info_colector/presentation/theme/theme.dart';
import 'package:info_colector/presentation/widgets/show_dialog_delete.dart';
import 'package:info_colector/presentation/widgets/visualizar_captacion.dart';

class VisualizarCaptacionesPage extends StatefulWidget {
  @override
  State<VisualizarCaptacionesPage> createState() =>
      _VisualizarCaptacionesPageState();
}

class _VisualizarCaptacionesPageState extends State<VisualizarCaptacionesPage> {
  @override
  Widget build(BuildContext context) {
    List<Object> list =
        ModalRoute.of(context)!.settings.arguments as List<Object>;
    final CaptacionModel? captacion = list.elementAt(0) as CaptacionModel;
    final CasaModel? casa = list.elementAt(1) as CasaModel;
    final DireccionModel? dire = list.elementAt(2) as DireccionModel;
    // final List<CaptacionModel>? listCaptacion =
    //     list.elementAt(1) as List<CaptacionModel>;

    return Scaffold(
      appBar: AppBar(
        title: Text(
          '${captacion!.nombre}',
          style: Theme.of(context).textTheme.headline6,
        ),
        iconTheme: const IconThemeData(color: SigipColors.colorPrimary),
      ),
      body: SingleChildScrollView(
        child: VisualizarCaptacion(
          captacion: captacion,
          casa: casa,
          dire: dire,
        ),
      ),
    );
  }
}
