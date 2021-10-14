import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:info_colector/data/dataproviders/captation_provider.dart';
import 'package:info_colector/data/dataproviders/casa_provider.dart';
import 'package:info_colector/data/dataproviders/direcccion_provider.dart';
import 'package:info_colector/data/dataproviders/fmc_provider.dart';
import 'package:info_colector/data/models/captacion_model.dart';
import 'package:info_colector/data/models/casa_model.dart';
import 'package:info_colector/data/models/direccion_model.dart';
import 'package:info_colector/data/models/fmc_model.dart';

class NuevaCaptacionPage extends StatefulWidget {
  @override
  _NuevaCaptacionState createState() => _NuevaCaptacionState();
}

class _NuevaCaptacionState extends State<NuevaCaptacionPage> {
  int _ci = 0;
  String _name = "";
  int _edad = 0;
  String _raza = "";
  String _sexo = "";
  String _trabaja = "";
  String _estudia = "";
  String _nivelEscolar = "";
  String _jubilado = "";
  String _militante = "";
  String _dosis = "";
  String _casa = "";
  String _calle = "";
  int _cdr = 0;
  int _zona = 0;
  int _bloque = 0;
  int _delegacion = 0;
  @override
  Widget build(BuildContext context) {
    final List<CaptacionModel> captaciones =
        ModalRoute.of(context)!.settings.arguments as List<CaptacionModel>;
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Nueva Captación',
          style: Theme.of(context).textTheme.headline6,
        ),
        actions: [
          IconButton(
              onPressed: () {
                int? idfmc = null;
                // if (_bloque.isNotEmpty &&
                //     _delegacion.isNotEmpty &&
                //     _sexo == "F" &&
                //     _ci.isNotEmpty &&
                //     _name.isNotEmpty &&
                //     _edad.isNotEmpty &&
                //     _raza.isNotEmpty &&
                //     _sexo.isNotEmpty &&
                //     _trabaja.isNotEmpty &&
                //     _estudia.isNotEmpty &&
                //     _nivelEscolar.isNotEmpty &&
                //     _jubilado.isNotEmpty &&
                //     _militante.isNotEmpty &&
                //     _dosis.isEmpty &&
                //     _casa.isNotEmpty &&
                //     _calle.isNotEmpty &&
                //     _cdr.isNotEmpty &&
                //     _zona.isNotEmpty) {
                //   final nueva = FMCModel(
                //       bloque: _bloque as int, delegacion: _delegacion as int);
                //   FMCProvider().nuevaFMC(nueva);

                //   idfmc = _obtenerIdFMC();
                // }
                if (_ci != "" &&
                    _name != "" &&
                    _edad != "" &&
                    _raza != "" &&
                    _sexo != "" &&
                    _trabaja != "" &&
                    _estudia != "" &&
                    _nivelEscolar != "" &&
                    _jubilado != "" &&
                    _militante != "" &&
                    _dosis != "" &&
                    _casa != "" &&
                    _calle != "" &&
                    _cdr != "" &&
                    _zona != "") {
                  int casaid = _obtenerCasaId(captaciones);
                  final casa = CasaModel(idCasa: casaid, numero: _casa);
                  CasaProvider().nuevaCasa(casa);

                  int? direId = _obtenerDireccionId(captaciones);

                  final dire = DireccionModel(
                      idDireccion: direId,
                      calle: _calle,
                      idCasa: casaid,
                      cdr: _cdr,
                      zona: _zona);
                  DireccionProvider().nuevaDireccion(dire);

                  final captacion = CaptacionModel(
                      ci: _ci,
                      nombre: _name,
                      edad: _edad,
                      raza: _raza,
                      sexo: _sexo,
                      trabaja: _trabaja,
                      estudia: _estudia,
                      nivelEscolar: _nivelEscolar,
                      jubilado: _jubilado,
                      militante: _militante,
                      dosis: _dosis,
                      idFMC: idfmc,
                      idDirecccion: direId,
                      idCasa: casaid);
                  CaptacionProvider().nuevaCaptacion(captacion);
                  Navigator.pop(context);
                }
                Fluttertoast.showToast(
                  msg:
                      "No se ha podido realizar la operacion, revise los datos",
                  toastLength: Toast.LENGTH_SHORT,
                  gravity: ToastGravity.BOTTOM,
                  backgroundColor: Colors.blue,
                  textColor: Colors.white,
                );
                // Navigator.pop(context);
              },
              icon: Icon(Icons.check))
        ],
      ),
      body: ListView(children: [
        Padding(
          padding: const EdgeInsets.all(15.0),
          child: Column(children: [
            Divider(),
            Text('Datos',
                style: TextStyle(
                  fontSize: 20.0,
                )),
            Divider(),
            TextField(
              autofocus: true,
              keyboardType:
                  const TextInputType.numberWithOptions(decimal: false),
              style: Theme.of(context).textTheme.bodyText2,
              decoration: InputDecoration(
                hintText: 'Carnet de identidad',
                label: Text('Carnet de Icentidad'),
                border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20.0)),
              ),
              onChanged: (valor) {
                setState(() {
                  _ci = int.parse(valor);
                });
              },
            ),
            Divider(),
            TextField(
              // autofocus: true,
              style: Theme.of(context).textTheme.bodyText2,
              textCapitalization: TextCapitalization.words,
              decoration: InputDecoration(
                hintText: 'Nombre y Apellidos',
                label: Text('Nombre y apellidos'),
                border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20.0)),
              ),
              onChanged: (valor) {
                setState(() {
                  _name = valor;
                });
              },
            ),
            Divider(),
            TextField(
              keyboardType:
                  const TextInputType.numberWithOptions(decimal: false),
              // autofocus: true,
              style: Theme.of(context).textTheme.bodyText2,
              decoration: InputDecoration(
                hintText: 'Edad',
                label: Text('Edad'),
                border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20.0)),
              ),
              onChanged: (valor) {
                setState(() {
                  _edad = int.parse(valor);
                });
              },
            ),
            Divider(),
            TextField(
              // autofocus: true,
              style: Theme.of(context).textTheme.bodyText2,
              textCapitalization: TextCapitalization.characters,
              decoration: InputDecoration(
                hintText: 'Raza',
                label: Text('Raza'),
                helperText: 'Use B o N',
                border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20.0)),
              ),
              onChanged: (valor) {
                setState(() {
                  _raza = valor;
                });
              },
            ),
            Divider(),
            TextField(
              autofocus: true,
              style: Theme.of(context).textTheme.bodyText2,
              textCapitalization: TextCapitalization.characters,
              decoration: InputDecoration(
                hintText: 'Sexo',
                label: Text('Sexo'),
                helperText: 'Use F o M',
                border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20.0)),
              ),
              onChanged: (valor) {
                setState(() {
                  _sexo = valor;
                });
              },
            ),
            Divider(),
            TextField(
              autofocus: true,
              style: Theme.of(context).textTheme.bodyText2,
              textCapitalization: TextCapitalization.characters,
              decoration: InputDecoration(
                hintText: 'Trabaja',
                label: Text('Trabaja'),
                helperText: 'Escriba Si o No',
                border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20.0)),
              ),
              onChanged: (valor) {
                setState(() {
                  _trabaja = valor;
                });
              },
            ),
            Divider(),
            TextField(
              autofocus: true,
              style: Theme.of(context).textTheme.bodyText2,
              textCapitalization: TextCapitalization.characters,
              decoration: InputDecoration(
                hintText: 'Estudia',
                label: Text('Estudia'),
                helperText: 'Escriba Si o No',
                border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20.0)),
              ),
              onChanged: (valor) {
                setState(() {
                  _estudia = valor;
                });
              },
            ),
            Divider(),
            TextField(
              autofocus: true,
              style: Theme.of(context).textTheme.bodyText2,
              textCapitalization: TextCapitalization.words,
              decoration: InputDecoration(
                hintText: 'Nivel Escolar',
                label: Text(
                  'Nivel Escolar',
                ),
                border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20.0)),
              ),
              onChanged: (valor) {
                setState(() {
                  _nivelEscolar = valor;
                });
              },
            ),
            Divider(),
            TextField(
              autofocus: true,
              style: Theme.of(context).textTheme.bodyText2,
              textCapitalization: TextCapitalization.characters,
              decoration: InputDecoration(
                hintText: 'Jubilado',
                label: Text('Jubilado'),
                helperText: 'Escriba Si o No',
                border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20.0)),
              ),
              onChanged: (valor) {
                setState(() {
                  _jubilado = valor;
                });
              },
            ),
            Divider(),
            TextField(
              autofocus: true,
              style: Theme.of(context).textTheme.bodyText2,
              textCapitalization: TextCapitalization.characters,
              decoration: InputDecoration(
                hintText: 'Militante',
                label: Text('Militante'),
                helperText: 'Escriba Si o No',
                border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20.0)),
              ),
              onChanged: (valor) {
                setState(() {
                  _militante = valor;
                });
              },
            ),
            Divider(),
            TextField(
              autofocus: true,
              style: Theme.of(context).textTheme.bodyText2,
              decoration: InputDecoration(
                hintText: 'Dosis',
                label: Text('Dosis'),
                helperText: "Escriba: 1ra, 2da o 3ra",
                border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20.0)),
              ),
              onChanged: (valor) {
                setState(() {
                  _dosis = valor;
                });
              },
            ),
            Divider(),
            Text('Direcón',
                style: TextStyle(
                  fontSize: 20.0,
                )),
            Divider(),
            TextField(
              autofocus: true,
              style: Theme.of(context).textTheme.bodyText2,
              textCapitalization: TextCapitalization.characters,
              decoration: InputDecoration(
                hintText: 'Casa',
                label: Text('# Casa'),
                border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20.0)),
              ),
              onChanged: (valor) {
                setState(() {
                  _casa = valor;
                });
              },
            ),
            Divider(),
            TextField(
              autofocus: true,
              style: Theme.of(context).textTheme.bodyText2,
              textCapitalization: TextCapitalization.words,
              decoration: InputDecoration(
                hintText: 'Calle',
                label: Text('Calle'),
                border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20.0)),
              ),
              onChanged: (valor) {
                setState(() {
                  _calle = valor;
                });
              },
            ),
            Divider(),
            TextField(
              autofocus: true,
              style: Theme.of(context).textTheme.bodyText2,
              keyboardType:
                  const TextInputType.numberWithOptions(decimal: false),
              decoration: InputDecoration(
                hintText: 'CDR',
                label: Text('CDR'),
                border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20.0)),
              ),
              onChanged: (valor) {
                setState(() {
                  _cdr = int.parse(valor);
                });
              },
            ),
            Divider(),
            TextField(
              autofocus: true,
              style: Theme.of(context).textTheme.bodyText2,
              keyboardType:
                  const TextInputType.numberWithOptions(decimal: false),
              decoration: InputDecoration(
                hintText: 'Zona',
                label: Text('Zona'),
                border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20.0)),
              ),
              onChanged: (valor) {
                setState(() {
                  _zona = int.parse(valor);
                });
              },
            ),
            Divider(),
            Text('FMC',
                style: TextStyle(
                  fontSize: 20.0,
                )),
            Divider(),
            TextField(
              autofocus: true,
              style: Theme.of(context).textTheme.bodyText2,
              keyboardType:
                  const TextInputType.numberWithOptions(decimal: false),
              decoration: InputDecoration(
                hintText: 'Bloque',
                label: Text('# Bloque'),
                border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20.0)),
              ),
              onChanged: (valor) {
                setState(() {
                  _bloque = int.parse(valor);
                });
              },
            ),
            Divider(),
            TextField(
              autofocus: true,
              style: Theme.of(context).textTheme.bodyText2,
              keyboardType:
                  const TextInputType.numberWithOptions(decimal: false),
              decoration: InputDecoration(
                hintText: 'Delegación',
                label: Text('Delegación'),
                border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20.0)),
              ),
              onChanged: (valor) {
                setState(() {
                  _delegacion = int.parse(valor);
                });
              },
            ),
            Divider()
          ]),
        )
      ]),
    );
  }

  int? _obtenerIdFMC() {
    FMCProvider()
        .getFmcBloqueDelegacion(_bloque as int, _delegacion as int)
        .then((value) {
      if (value != null) return value.idFMC;
    });
  }

  int _obtenerCasaId(List<CaptacionModel> cap) {
    int res = 0;
    bool cont = true;
    cap.forEach((element) {
      if (cont) {
        res = element.idCasa as int;
        cont = false;
      }
      if (res < (element.idCasa as int)) {
        res = element.idCasa as int;
      }
    });
    return res + 1;
  }

  int _obtenerDireccionId(List<CaptacionModel> cap) {
    int res = 0;
    bool cont = true;
    cap.forEach((element) {
      if (cont) {
        res = element.idDirecccion as int;
        cont = false;
      }
      if (res < (element.idDirecccion as int)) {
        res = element.idDirecccion as int;
      }
    });
    return res + 1;
  }
}
