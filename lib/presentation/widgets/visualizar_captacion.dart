import 'package:flutter/material.dart';
import 'package:info_colector/data/dataproviders/captation_provider.dart';
import 'package:info_colector/data/dataproviders/casa_provider.dart';
import 'package:info_colector/data/dataproviders/direcccion_provider.dart';
import 'package:info_colector/data/models/captacion_model.dart';
import 'package:info_colector/data/models/casa_model.dart';
import 'package:info_colector/data/models/direccion_model.dart';

class VisualizarCaptacion extends StatefulWidget {
  const VisualizarCaptacion({Key? key, this.captacion, this.casa, this.dire})
      : super(key: key);

  final CaptacionModel? captacion;
  final CasaModel? casa;
  final DireccionModel? dire;
  // final List<CaptacionModel>? listCaptacion;

  @override
  State<VisualizarCaptacion> createState() => _VisualizarCaptacionState();
}

class _VisualizarCaptacionState extends State<VisualizarCaptacion> {
  // late String _observacionSeleccionada;
  // late String _incidenciaSeleccionada;

  // @override
  // void initState() {
  //   _observacionSeleccionada = widget.captacion!.observacion.toString();
  //   _incidenciaSeleccionada = widget.captacion!.incidencia.toString();
  //   super.initState();
  // }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        DataTable(
          columns: const [
            DataColumn(
              label: Text(
                'Datos Personales',
              ),
            ),
            DataColumn(label: Text('Valores')),
          ],
          rows: [
            DataRow(
              cells: [
                DataCell(
                  Text('CI', style: Theme.of(context).textTheme.bodyText2),
                ),
                DataCell(
                  Text(
                    widget.captacion!.ci.toString(),
                    style: Theme.of(context).textTheme.bodyText2,
                  ),
                )
              ],
            ),
            DataRow(
              cells: [
                DataCell(
                  Text('Nombre', style: Theme.of(context).textTheme.bodyText2),
                ),
                DataCell(
                  Text(
                    widget.captacion!.nombre.toString(),
                    style: Theme.of(context).textTheme.bodyText2,
                  ),
                )
              ],
            ),
            DataRow(
              cells: [
                DataCell(
                  Text('Edad', style: Theme.of(context).textTheme.bodyText2),
                ),
                DataCell(
                  Text(
                    widget.captacion!.edad.toString(),
                    style: Theme.of(context).textTheme.bodyText2,
                  ),
                )
              ],
            ),
            DataRow(
              cells: [
                DataCell(
                  Text('Raza', style: Theme.of(context).textTheme.bodyText2),
                ),
                DataCell(
                  Text(
                    widget.captacion!.raza.toString(),
                    style: Theme.of(context).textTheme.bodyText2,
                  ),
                )
              ],
            ),
            DataRow(
              cells: [
                DataCell(
                  Text('Sexo', style: Theme.of(context).textTheme.bodyText2),
                ),
                DataCell(
                  Text(
                    widget.captacion!.trabaja.toString(),
                    style: Theme.of(context).textTheme.bodyText2,
                  ),
                )
              ],
            ),
            DataRow(
              cells: [
                DataCell(
                  Text(
                    'Estudia',
                    style: Theme.of(context).textTheme.bodyText2,
                  ),
                ),
                DataCell(
                  Text(
                    widget.captacion!.estudia.toString(),
                    style: Theme.of(context).textTheme.bodyText2,
                  ),
                )
              ],
            ),
            DataRow(
              cells: [
                //es un spinner
                DataCell(
                  Text('Nivel Escolar',
                      style: Theme.of(context).textTheme.bodyText2),
                ),

                DataCell(
                  Text(
                    widget.captacion!.nivelEscolar.toString(),
                    style: Theme.of(context).textTheme.bodyText2,
                  ),
                )
                // DataCell(
                //   ClipRect(
                //     clipBehavior: Clip.antiAlias,
                //     child: DropdownButton(
                //       isExpanded: true,
                //       value: _observacionSeleccionada,
                //       items: const [
                //         DropdownMenuItem(
                //           value: 'ND: No disponible en el formulario',
                //           child: Text('ND: No disponible en el formulario'),
                //         ),
                //         DropdownMenuItem(
                //           value: 'FE: Falta estacional',
                //           child: Text('FE: Falta estacional'),
                //         ),
                //         DropdownMenuItem(
                //           value: 'FD: Falta definitiva',
                //           child: Text('FD: Falta definitiva'),
                //         ),
                //         DropdownMenuItem(
                //           value: 'O: En oferta',
                //           child: Text('O: En oferta'),
                //         ),
                //         DropdownMenuItem(
                //           value: 'FO: Falta ocasional',
                //           child: Text('FO: Falta ocasional'),
                //         ),
                //         DropdownMenuItem(
                //           value: 'PN: Precio Normal',
                //           child: Text('PN: Precio Normal'),
                //         ),
                //         DropdownMenuItem(
                //           value: 'UM: Cambio de cantidad o UM',
                //           child: Text('UM: Cambio de cantidad o UM'),
                //         ),
                //         DropdownMenuItem(
                //           value: 'R: Rebaja',
                //           child: Text('R: Rebaja'),
                //         ),
                //         DropdownMenuItem(
                //           value: 'C: Comparable',
                //           child: Text('C: Comparable'),
                //         ),
                //       ],
                //       onChanged: (String? observacion) {
                //         setState(() {
                //           _observacionSeleccionada = observacion!;
                //         });
                //       },
                //     ),
                //   ),
                // )
              ],
            ),
            DataRow(
              cells: [
                DataCell(
                  Text('Jubilado',
                      style: Theme.of(context).textTheme.bodyText2),
                ),
                DataCell(Text(
                  widget.captacion!.jubilado.toString(),
                  style: Theme.of(context).textTheme.bodyText2,
                ))
              ],
            ),
            DataRow(
              cells: [
                //es un spinner
                DataCell(
                  Text('Militante',
                      style: Theme.of(context).textTheme.bodyText2),
                ),

                DataCell(
                  Text(
                    widget.captacion!.militante.toString(),
                    style: Theme.of(context).textTheme.bodyText2,
                  ),
                ),
                // DataCell(
                //   ButtonTheme(
                //     alignedDropdown: true,
                //     child: DropdownButton(
                //       isExpanded: true,
                //       value: _incidenciaSeleccionada,
                //       items: const [
                //         DropdownMenuItem(
                //           value: 'E0:Establecimiento visitado',
                //           child: Text('E0:Establecimiento visitado'),
                //         ),
                //         DropdownMenuItem(
                //           value: 'E1:Cierre temporal',
                //           child: Text('E1:Cierre temporal'),
                //         ),
                //         DropdownMenuItem(
                //           value: 'E2:Cierre definitivo',
                //           child: Text('E2:Cierre definitivo'),
                //         ),
                //         DropdownMenuItem(
                //           value: 'E3:Establecimiento no Visitado',
                //           child: Text('E3:Establecimiento no Visitado'),
                //         ),
                //         DropdownMenuItem(
                //           value: 'E4:Negativa',
                //           child: Text('E4:Negativa'),
                //         ),
                //       ],
                //       onChanged: (String? incidencia) {
                //         setState(() {
                //           _incidenciaSeleccionada = incidencia!;
                //         });
                //       },
                //     ),
                //   ),
                // )
              ],
            ),
            DataRow(cells: [
              DataCell(
                Text('Dosis', style: Theme.of(context).textTheme.bodyText2),
              ),
              DataCell(Text(
                widget.captacion!.dosis.toString(),
                style: Theme.of(context).textTheme.bodyText2,
              ))
            ])
          ],
        ),
        DataTable(columns: [
          DataColumn(
            label: Text('Dirección'),
          ),
          DataColumn(label: Text('Valores'))
        ], rows: [
          DataRow(cells: [
            DataCell(
              Text('# Casa', style: Theme.of(context).textTheme.bodyText2),
            ),
            DataCell(Text(
              widget.casa!.numero.toString(),
              style: Theme.of(context).textTheme.bodyText2,
            ))
          ]),
          DataRow(cells: [
            DataCell(
              Text('Calle', style: Theme.of(context).textTheme.bodyText2),
            ),
            DataCell(Text(
              widget.dire!.calle.toString(),
              style: Theme.of(context).textTheme.bodyText2,
            ))
          ]),
          DataRow(cells: [
            DataCell(
              Text('CDR', style: Theme.of(context).textTheme.bodyText2),
            ),
            DataCell(Text(
              widget.dire!.cdr.toString(),
              style: Theme.of(context).textTheme.bodyText2,
            ))
          ]),
          DataRow(cells: [
            DataCell(
              Text('Zona', style: Theme.of(context).textTheme.bodyText2),
            ),
            DataCell(Text(
              widget.dire!.zona.toString(),
              style: Theme.of(context).textTheme.bodyText2,
            ))
          ]),
        ]),
        DataTable(columns: const [
          DataColumn(label: Text('FMC')),
          DataColumn(label: Text('Valores'))
        ], rows: [
          DataRow(cells: [
            DataCell(
              Text('Bolque', style: Theme.of(context).textTheme.bodyText2),
            ),
            DataCell(Text(
              widget.captacion!.dosis.toString(),
              style: Theme.of(context).textTheme.bodyText2,
            ))
          ]),
          DataRow(cells: [
            DataCell(
              Text('Delegación', style: Theme.of(context).textTheme.bodyText2),
            ),
            DataCell(Text(
              widget.captacion!.dosis.toString(),
              style: Theme.of(context).textTheme.bodyText2,
            ))
          ]),
        ])
      ],
    );
  }

  String _obtenerNumCasa(CaptacionModel? cap) {
    _NumCasaAsync(cap).then((value) => value);
    return 'No se ha obtenido';
  }

  Future<String> _NumCasaAsync(CaptacionModel? cap) async {
    await CasaProvider()
        .getCasaNumero(cap!.idCasa as int)
        .then((value) => value!.numero);
    return 'No se ha obtenido';
  }
}
