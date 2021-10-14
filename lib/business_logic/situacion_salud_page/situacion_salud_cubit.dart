import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:info_colector/business_logic/situacion_salud_page/situacion_salud_state.dart';
import 'package:info_colector/data/models/situacion_salud_model.dart';
import 'package:info_colector/data/streams/situacion_salud_stream.dart';

class SituacionSaludPageCubit extends Cubit<SituacionSaludState> {
  SituacionSaludPageCubit() : super(const SituacionSaludState.loading());

  Future<void> loadSituacionSaludes() async {
    SituacionSaludStream().obtenerSituacionSaludes();
    final Stream<List<SituacionSaludModel>?>? situacionSaludesStream =
        SituacionSaludStream().SituacionSaludesStream;
    try {
      if (situacionSaludesStream == null) {
        emit(const SituacionSaludState.noData());
      } else {
        final List<SituacionSaludModel>? SituacionSaludesList =
            await situacionSaludesStream.first;
        emit(SituacionSaludState.hasData(SituacionSaludesList));
      }
    } on Exception catch (e) {
      emit(SituacionSaludState.hasError(e.toString()));
    }
  }
}
