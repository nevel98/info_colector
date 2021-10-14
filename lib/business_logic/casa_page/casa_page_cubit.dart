import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:info_colector/business_logic/casa_page/casa_page_state.dart';
import 'package:info_colector/data/models/casa_model.dart';
import 'package:info_colector/data/streams/casa_stream.dart';

class CasaPageCubit extends Cubit<CasaState> {
  CasaPageCubit() : super(const CasaState.loading());

  Future<void> loadCasas() async {
    CasaStream().obtenerCasas();
    final Stream<List<CasaModel>?>? casasStream = CasaStream().casasStream;
    try {
      if (casasStream == null) {
        emit(const CasaState.noData());
      } else {
        final List<CasaModel>? casasList = await casasStream.first;
        emit(CasaState.hasData(casasList));
      }
    } on Exception catch (e) {
      emit(CasaState.hasError(e.toString()));
    }
  }
}
