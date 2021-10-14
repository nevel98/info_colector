import 'package:info_colector/data/models/captacion_all_info_model.dart';
import 'package:info_colector/data/models/captacion_model.dart';
import 'package:sqflite/sqflite.dart';

import 'db_provider.dart';

const int _ci = 0;
const String _nombre = 'nombre';
const int _edad = 0;
const String _raza = 'raza';
const String _sexo = 'sexo';
const String _trabaja = 'trabaja';
const String _estudia = 'estudia';
const String _nivelEscolar = 'nivel_escolar';
const String _jubilado = 'jubilado';
const String _militante = 'militante';
const String _dosis = 'dosis';
const int _idCasa = 0;
const String _numero = "";
const int _idDireccion = 0;
const String _calle = "";
const int _cdr = 0;
const int _zona = 0;
const int _idFMC = 0;
const int _bloque = 0;
const int _delegacion = 0;

class CaptacionAllInfoProvider {
  final Database database = DBProvider().database;

  static String createTable() {
    return 'CREATE TABLE captacion_all_info ('
        '$_ci INTEGER PRIMARY KEY,'
        '$_nombre TEXT,'
        '$_edad INTEGER,'
        '$_raza TEXT,'
        '$_sexo TEXT,'
        '$_trabaja TEXT,'
        '$_estudia TEXT,'
        '$_nivelEscolar TEXT,'
        '$_jubilado TEXT,'
        '$_militante TEXT,'
        '$_dosis TEXT,'
        '$_idCasa INTEGER,'
        '$_numero TEXT,'
        '$_idDireccion INTEGER,'
        '$_calle TEXT,'
        '$_cdr INTEGER,'
        '$_zona INTEGER,'
        '$_idFMC INTEGER,'
        '$_bloque INTEGER,'
        '$_delegacion INTEGER'
        ')';
  }

  Future<int> nuevaCaptacion(CaptacionModel nuevaCaptacion) async {
    final res = await database.insert('captacion', nuevaCaptacion.toJson());
    return res;
  }

//SELECT - Obtener Información
  Future<CaptacionModel?> getCaptacionCi(int ci) async {
    final res =
        await database.query('captacion', where: 'ci = ?', whereArgs: [ci]);
    return res.isNotEmpty ? CaptacionModel.fromJson(res.first) : null;
  }

  Future<List<CaptacionAllInfoModel>> getTodasCaptacionesAllInfo() async {
    // final res = await database.query('dcaptacion');
    final res = await database.rawQuery(
      "SELECT cap.ci, cap.nombre, cap.edad, cap.raza, cap.sexo, cap.trabaja, cap.estudia, cap.nivel_escolar, cap.jubilado, cap.militante, cap.dosis, casa.id_casa, casa.numero, cap.id_direccion, dire.calle, dire.cdr, dire.zona, cap.id_fmc, fmc.bloque, fmc.delegacion  FROM captacion as cap, fmc, direccion as dire, casa WHERE cap.id_direccion=dire.id_direccion and cap.id_fmc=fmc.id_fmc and dire.id_casa=casa.id_casa",
    );

    final List<CaptacionAllInfoModel> list = res.isNotEmpty
        ? res.map((capt) => CaptacionAllInfoModel.fromJson(capt)).toList()
        : [];
    return list;
  }

  //Contar registros
  Future<int> countCaptaciones() async {
    final res = await database.query('captacion_all_info');

    final List<CaptacionModel> list = res.isNotEmpty
        ? res.map((capt) => CaptacionModel.fromJson(capt)).toList()
        : [];
    return list.length;
  }

//Actualizar Registros
  Future<int> updateCaptacion(CaptacionModel nuevaCaptacion) async {
    final res = await database.update(
      'captacion',
      nuevaCaptacion.toJson(),
      where: 'ci = ?',
      whereArgs: [nuevaCaptacion.ci],
    );
    return res;
  }

//Eliminar Registros
  Future<int> deleteCaptacion(int ci) async {
    final res =
        await database.delete('captacion', where: 'ci = ?', whereArgs: [ci]);
    return res;
  }

  Future<int> deleteAll() async {
    final res = await database.rawDelete('DELETE FROM dcaptacion');
    return res;
  }
}
