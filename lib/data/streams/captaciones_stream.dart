import 'dart:async';

import 'package:info_colector/data/dataproviders/captation_provider.dart';
import 'package:info_colector/data/models/captacion_model.dart';

class CaptacionesStream {
  static final CaptacionesStream _captacionesStream = CaptacionesStream._();

  factory CaptacionesStream() {
    return _captacionesStream;
  }

  CaptacionesStream._() {
    //Obtener Captaciones
    obtenerCaptaciones();
  }

  final StreamController<List<CaptacionModel>?> _captacionesStreamController =
      StreamController<List<CaptacionModel>?>.broadcast();

  Stream<List<CaptacionModel>?>? get captacionesStream =>
      _captacionesStreamController.stream;

  void disposeStreams() {
    _captacionesStreamController.close();
  }

  Future<void> obtenerCaptaciones() async {
    _captacionesStreamController.sink
        .add(await CaptacionProvider().getTodasCaptaciones());
  }
}
