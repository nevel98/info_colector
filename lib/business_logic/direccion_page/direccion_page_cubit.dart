import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:info_colector/business_logic/direccion_page/direccion_page_state.dart';
import 'package:info_colector/data/models/direccion_model.dart';
import 'package:info_colector/data/streams/direccion_stream.dart';

class DireccionPageCubit extends Cubit<DireccionState> {
  DireccionPageCubit() : super(const DireccionState.loading());

  Future<void> loadDirecciones() async {
    DireccionStream().obtenerDirecciones();
    final Stream<List<DireccionModel>?>? DireccionesStream =
        DireccionStream().DireccionesStream;
    try {
      if (DireccionesStream == null) {
        emit(const DireccionState.noData());
      } else {
        final List<DireccionModel>? DireccionesList =
            await DireccionesStream.first;
        emit(DireccionState.hasData(DireccionesList));
      }
    } on Exception catch (e) {
      emit(DireccionState.hasError(e.toString()));
    }
  }
}
