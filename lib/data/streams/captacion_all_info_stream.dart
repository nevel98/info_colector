import 'dart:async';

import 'package:info_colector/data/dataproviders/captacion_all_info_provider.dart';
import 'package:info_colector/data/dataproviders/captation_provider.dart';
import 'package:info_colector/data/models/captacion_all_info_model.dart';
import 'package:info_colector/data/models/captacion_model.dart';

class CaptacionesAllInfoStream {
  static final CaptacionesAllInfoStream _captacionesAllInfoStream =
      CaptacionesAllInfoStream._();

  factory CaptacionesAllInfoStream() {
    return _captacionesAllInfoStream;
  }

  CaptacionesAllInfoStream._() {
    //Obtener Captaciones
    obtenerCaptaciones();
  }

  final StreamController<List<CaptacionAllInfoModel>?>
      _captacionesAllInfoStreamController =
      StreamController<List<CaptacionAllInfoModel>?>.broadcast();

  Stream<List<CaptacionAllInfoModel>?>? get captacionesStream =>
      _captacionesAllInfoStreamController.stream;

  void disposeStreams() {
    _captacionesAllInfoStreamController.close();
  }

  Future<void> obtenerCaptaciones() async {
    _captacionesAllInfoStreamController.sink
        .add(await CaptacionAllInfoProvider().getTodasCaptacionesAllInfo());
  }
}
