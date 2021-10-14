import 'package:flutter/material.dart';
import 'package:info_colector/data/models/captacion_model.dart';
import 'package:info_colector/data/models/casa_model.dart';
import 'package:info_colector/data/models/direccion_model.dart';
import 'package:info_colector/data/models/fmc_model.dart';
import 'package:info_colector/data/models/situacion_salud_model.dart';
import 'package:info_colector/presentation/theme/theme.dart';
import 'package:info_colector/presentation/widgets/pop_menu_captaciones.dart';

class DataCaptacionesWidget extends StatelessWidget {
  const DataCaptacionesWidget(
      {Key? key,
      this.captacionesModel,
      this.casaModel,
      this.direModel,
      this.fmcModel,
      this.SSaludModel})
      : super(key: key);

  final List<CaptacionModel>? captacionesModel;
  final List<CasaModel>? casaModel;
  final List<DireccionModel>? direModel;
  final List<FMCModel>? fmcModel;
  final List<SituacionSaludModel>? SSaludModel;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: PaginatedDataTable(
        showFirstLastButtons: true,
        arrowHeadColor: SigipColors.colorPrimary,
        columns: const [
          DataColumn(label: Text('Indice'), numeric: true),
          DataColumn(label: Text('ci')),
          DataColumn(label: Text('Nombre')),
          DataColumn(label: Text('Edad')),
          DataColumn(label: Text('Raza'), numeric: true),
          DataColumn(label: Text('Sexo')),
          DataColumn(label: Text('Trabaja')),
          DataColumn(label: Text('Esudia')),
          DataColumn(label: Text('Nivel escolar')),
          DataColumn(label: Text('Jubilado')),
          DataColumn(label: Text('militante')),
          DataColumn(label: Text('dosis')),
        ],
        source: _CaptacionesData(data: captacionesModel, context: context),
        rowsPerPage: 10,
        columnSpacing: 50,
        sortColumnIndex: 0,
        horizontalMargin: 10,
        showCheckboxColumn: false,
      ),
    );
  }
}

class _CaptacionesData extends DataTableSource {
  _CaptacionesData(
      {required this.data,
      this.casaModel,
      this.direModel,
      this.fmcModel,
      this.SSaludModel,
      required this.context});

  final List<CaptacionModel>? data;
  final List<CasaModel>? casaModel;
  final List<DireccionModel>? direModel;
  final List<FMCModel>? fmcModel;
  final List<SituacionSaludModel>? SSaludModel;
  final BuildContext context;

  List<DataRow> _getCaptaciones() {
    return _tableCaptaciones(
        data, casaModel, direModel, fmcModel, SSaludModel, context);
  }

  @override
  bool get isRowCountApproximate => false;

  @override
  int get rowCount => _getCaptaciones.call().length;
  @override
  int get selectedRowCount => 0;
  @override
  DataRow? getRow(int index) {
    return _getCaptaciones().elementAt(index);
  }
}

List<DataRow> _tableCaptaciones(
  List<CaptacionModel>? data,
  List<CasaModel>? casaList,
  List<DireccionModel>? direList,
  List<FMCModel>? fmcList,
  List<SituacionSaludModel>? SSaludList,
  BuildContext context,
) {
  int indexRow = 1;
  final List<DataRow> captaciones = [];
  data?.forEach((element) {
    final widgetTemp = DataRow(
      key: ValueKey(indexRow.toString()),
      color: MaterialStateColor.resolveWith(
        (Set<MaterialState> states) => states.contains(MaterialState.selected)
            ? Colors.grey
            : Colors.white,
      ),
      cells: [
        DataCell(Text(indexRow.toString())),
        DataCell(Text(element.ci.toString())),
        DataCell(Text(element.nombre.toString())),
        DataCell(Text(element.edad.toString())),
        DataCell(Text(element.raza.toString())),
        DataCell(Text(element.sexo.toString())),
        DataCell(Text(element.trabaja.toString())),
        DataCell(Text(element.estudia.toString())),
        DataCell(Text(element.nivelEscolar.toString())),
        DataCell(Text(element.jubilado.toString())),
        DataCell(Text(element.militante.toString())),
        DataCell(Text(element.dosis.toString())),
      ],
      onSelectChanged: (bool? isSelected) {
        showPopMenuCaptaciones(
            context,
            element,
            _busacrCasa(casaList, element.idCasa as int),
            _buscarDirec(direList, element.idDirecccion as int),
            _buscarFmc(fmcList, element.idFMC),
            _buscarSSalud(SSaludList, element.ci as int));
        // final route = MaterialPageRoute(
        //   settings: RouteSettings(arguments: element),
        //   builder: (context) => VisualizarCaptacionesPage(),
        // );
        // Navigator.push(context, route);

        /*  Fluttertoast.showToast(
            msg: element.variedad.toString(),
            toastLength: Toast.LENGTH_SHORT,
            gravity: ToastGravity.BOTTOM,
            backgroundColor: Colors.red,
            textColor: Colors.yellow); */
      },
    );
    captaciones.add(widgetTemp);
    indexRow = indexRow + 1;
  });
  return captaciones;
}

FMCModel? _buscarFmc(List<FMCModel>? fmcList, int? fmcId) {
  FMCModel? fmc;
  fmcList!.forEach((element) {
    if (element.idFMC == fmcId) {
      fmc = element;
    }
  });
  return fmc;
}

DireccionModel? _buscarDirec(List<DireccionModel>? direList, int direId) {
  DireccionModel? dire;
  direList!.forEach((element) {
    if (element.idDireccion == direId) {
      dire = element;
    }
  });
  return dire;
}

List<SituacionSaludModel>? _buscarSSalud(
    List<SituacionSaludModel>? SSaludList, int SSaludId) {
  List<SituacionSaludModel>? salud = List.empty();
  SSaludList!.forEach((element) {
    if (element.id_captacion == SSaludId) {
      salud.add(element);
    }
  });
  return salud;
}

CasaModel? _busacrCasa(List<CasaModel>? casaList, int casaId) {
  CasaModel? casa;
  casaList!.forEach((element) {
    if (element.idCasa == casaId) {
      casa = element;
    }
  });
  return casa;
}
