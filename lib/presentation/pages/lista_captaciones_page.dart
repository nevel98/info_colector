import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:info_colector/business_logic/captacion_page/captacion_page_cubit.dart';
import 'package:info_colector/business_logic/captacion_page/captacion_page_state.dart';
import 'package:info_colector/business_logic/casa_page/casa_page_cubit.dart';
import 'package:info_colector/business_logic/casa_page/casa_page_state.dart';
import 'package:info_colector/business_logic/direccion_page/direccion_page_cubit.dart';
import 'package:info_colector/business_logic/direccion_page/direccion_page_state.dart';
import 'package:info_colector/business_logic/situacion_salud_page/situacion_salud_cubit.dart';
import 'package:info_colector/business_logic/situacion_salud_page/situacion_salud_state.dart';
import 'package:info_colector/data/models/captacion_model.dart';
import 'package:info_colector/data/models/casa_model.dart';
import 'package:info_colector/data/models/direccion_model.dart';
import 'package:info_colector/presentation/pages/nueva_captacion_page.dart';
import 'package:info_colector/presentation/theme/theme.dart';
import 'package:info_colector/presentation/widgets/data_table_captaciones_widget.dart';
import 'package:info_colector/presentation/widgets/filtro_captaciones_menu.dart';
import 'package:info_colector/presentation/widgets/loading_widget.dart';
import 'package:path/path.dart';

class ListaCaptacionesPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => CaptacionPageCubit()..loadCaptaciones(),
      child: ListaCaptacionesView(),
    );
  }
}

class ListaCaptacionesView extends StatelessWidget {
  List<CaptacionModel>? _captacionesModel = new List.empty();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          IconButton(
            icon: const Icon(Icons.filter_alt_outlined),
            onPressed: () {
              // filtroCaptacionesMenu(context, _captacionesModel);
            },
          ),
          IconButton(
            icon: const Icon(Icons.add),
            onPressed: () {
              final route = MaterialPageRoute(
                  builder: (context) => NuevaCaptacionPage(),
                  settings: RouteSettings(arguments: _captacionesModel));
              // Navigator.of(context).pop();
              Navigator.push(context, route);
            },
          )
        ],
        title: Text(
          'Listado',
          style: Theme.of(context).textTheme.headline6,
        ),
        iconTheme: const IconThemeData(color: SigipColors.colorPrimary),
      ),
      body: BlocBuilder<CaptacionPageCubit, CaptacionState>(
        builder: (context, state) {
          return state.when(
            loading: () => LoadingWidget(),
            noData: () => const Center(child: Text('No hay Captaciones')),
            hasData: (state) =>
                //@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
                BlocBuilder<CasaPageCubit, CasaState>(
              builder: (context, casaState) {
                return casaState.when(
                    loading: () => LoadingWidget(),
                    noData: () =>
                        const Center(child: Text('No hay Captaciones')),
                    hasData: (casaState) =>
                        //@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
                        BlocBuilder<DireccionPageCubit, DireccionState>(
                            builder: (context, direState) {
                          return direState.when(
                              loading: () => LoadingWidget(),
                              noData: () => const Center(
                                  child: Text('No hay Captaciones')),
                              hasData: (direState) => BlocBuilder<
                                          SituacionSaludPageCubit,
                                          SituacionSaludState>(
                                      builder: (context, situaSaludState) {
                                    return situaSaludState.when(
                                        loading: () => LoadingWidget(),
                                        noData: () => const Center(
                                            child: Text('No hay Captaciones')),
                                        hasData: (situaSaludState) {
                                          _captacionesModel = state;
                                          //&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&
                                          return DataCaptacionesWidget(
                                              captacionesModel: state,
                                              casaModel: casaState,
                                              direModel: direState,
                                              SSaludModel: situaSaludState);
                                        },
                                        hasError: (state) => Center(
                                            child: Text(state.toString())));
                                  }),
                              hasError: (state) =>
                                  Center(child: Text(state.toString())));
                        }),
                    hasError: (state) => Center(child: Text(state.toString())));
              },
            ),
            hasError: (state) => Center(child: Text(state.toString())),
          );
        },
      ),
    );
  }
}
