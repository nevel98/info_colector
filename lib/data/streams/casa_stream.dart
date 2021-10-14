import 'dart:async';

import 'package:info_colector/data/dataproviders/casa_provider.dart';
import 'package:info_colector/data/models/casa_model.dart';

class CasaStream {
  static final CasaStream _casaStream = CasaStream._();

  factory CasaStream() {
    return _casaStream;
  }

  CasaStream._() {
    //Obtener Captaciones
    obtenerCasas();
  }

  final StreamController<List<CasaModel>?> _casasStreamController =
      StreamController<List<CasaModel>?>.broadcast();

  Stream<List<CasaModel>?>? get casasStream => _casasStreamController.stream;

  void disposeStreams() {
    _casasStreamController.close();
  }

  Future<void> obtenerCasas() async {
    _casasStreamController.sink.add(await CasaProvider().getTodasCasas());
  }
}
