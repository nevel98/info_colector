import 'dart:async';

import 'package:info_colector/data/dataproviders/situacion_salud_provider.dart';
import 'package:info_colector/data/models/situacion_salud_model.dart';

class SituacionSaludStream {
  static final SituacionSaludStream _SituacionSaludStream =
      SituacionSaludStream._();

  factory SituacionSaludStream() {
    return _SituacionSaludStream;
  }

  SituacionSaludStream._() {
    //Obtener SituacionSaludes
    obtenerSituacionSaludes();
  }

  final StreamController<List<SituacionSaludModel>?>
      _SituacionSaludesStreamController =
      StreamController<List<SituacionSaludModel>?>.broadcast();

  Stream<List<SituacionSaludModel>?>? get SituacionSaludesStream =>
      _SituacionSaludesStreamController.stream;

  void disposeStreams() {
    _SituacionSaludesStreamController.close();
  }

  Future<void> obtenerSituacionSaludes() async {
    _SituacionSaludesStreamController.sink
        .add(await SituacionSaludProvider().getTodasSituacionSaludes());
  }
}
