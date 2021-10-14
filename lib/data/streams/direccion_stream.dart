import 'dart:async';

import 'package:info_colector/data/dataproviders/direcccion_provider.dart';
import 'package:info_colector/data/models/direccion_model.dart';

class DireccionStream {
  static final DireccionStream _DireccionStream = DireccionStream._();

  factory DireccionStream() {
    return _DireccionStream;
  }

  DireccionStream._() {
    //Obtener Captaciones
    obtenerDirecciones();
  }

  final StreamController<List<DireccionModel>?> _DireccionsStreamController =
      StreamController<List<DireccionModel>?>.broadcast();

  Stream<List<DireccionModel>?>? get DireccionesStream =>
      _DireccionsStreamController.stream;

  void disposeStreams() {
    _DireccionsStreamController.close();
  }

  Future<void> obtenerDirecciones() async {
    _DireccionsStreamController.sink
        .add(await DireccionProvider().getTodasDireccciones());
  }
}
