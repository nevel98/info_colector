import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:info_colector/business_logic/captacion_page/captacion_page_state.dart';
import 'package:info_colector/data/models/captacion_model.dart';
import 'package:info_colector/data/streams/captaciones_stream.dart';

class CaptacionPageCubit extends Cubit<CaptacionState> {
  CaptacionPageCubit() : super(const CaptacionState.loading());

  Future<void> loadCaptaciones() async {
    CaptacionesStream().obtenerCaptaciones();
    final Stream<List<CaptacionModel>?>? captacionesStream =
        CaptacionesStream().captacionesStream;
    try {
      if (captacionesStream == null) {
        emit(const CaptacionState.noData());
      } else {
        final List<CaptacionModel>? captacionesList =
            await captacionesStream.first;
        emit(CaptacionState.hasData(captacionesList));
      }
    } on Exception catch (e) {
      emit(CaptacionState.hasError(e.toString()));
    }
  }
}
