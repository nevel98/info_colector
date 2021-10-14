import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:info_colector/business_logic/captacion_page/captacion_page_state.dart';
import 'package:info_colector/data/models/captacion_all_info_model.dart';
import 'package:info_colector/data/models/captacion_model.dart';
import 'package:info_colector/data/streams/captacion_all_info_stream.dart';
import 'package:info_colector/data/streams/captaciones_stream.dart';

import 'captacion_all_info_page_state.dart';

class CaptacionAllInfoPageCubit extends Cubit<CaptacionAllInfoState> {
  CaptacionAllInfoPageCubit() : super(const CaptacionAllInfoState.loading());

  Future<void> loadCaptaciones() async {
    CaptacionesStream().obtenerCaptaciones();
    final Stream<List<CaptacionAllInfoModel>?>? captacionesStream =
        CaptacionesAllInfoStream().captacionesStream;
    try {
      if (captacionesStream == null) {
        emit(const CaptacionAllInfoState.noData());
      } else {
        final List<CaptacionAllInfoModel>? captacionesList =
            await captacionesStream.first;
        emit(CaptacionAllInfoState.hasData(captacionesList));
      }
    } on Exception catch (e) {
      emit(CaptacionAllInfoState.hasError(e.toString()));
    }
  }
}
