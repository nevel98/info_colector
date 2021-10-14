import 'package:info_colector/data/models/situacion_salud_model.dart';
import 'package:sqflite/sqflite.dart';

import 'db_provider.dart';

const int _id_captacion = 0;
const String _descripcion = 'descripcion';

class SituacionSaludProvider {
  final Database database = DBProvider().database;

  static String createTable() {
    return 'CREATE TABLE situacion_salud ('
        '$_id_captacion INTEGER PRIMARY KEY,'
        '$_descripcion TEXT'
        ')';
  }

  Future<int> nuevaSituacionSalud(
      SituacionSaludModel nuevaSituacionSalud) async {
    final res =
        await database.insert('situacion_salud', nuevaSituacionSalud.toJson());
    return res;
  }

//SELECT - Obtener Información
  Future<SituacionSaludModel?> getSituacionSaludCi(int ci) async {
    final res = await database
        .query('situacion_salud', where: 'id_captacion = ?', whereArgs: [ci]);
    return res.isNotEmpty ? SituacionSaludModel.fromJson(res.first) : null;
  }

  Future<List<SituacionSaludModel>> getTodasSituacionSaludes() async {
    // final res = await database.query('dSituacionSalud');
    final res = await database.rawQuery(
      "SELECT * FROM situacion_salud",
    );

    final List<SituacionSaludModel> list = res.isNotEmpty
        ? res.map((capt) => SituacionSaludModel.fromJson(capt)).toList()
        : [];
    return list;
  }

  // Future<List<SituacionSaludAllInfoModel>>
  //     getTodasSituacionSaludesAllInfo() async {
  //   // final res = await database.query('dSituacionSalud');
  //   final res = await database.rawQuery(
  //     "SELECT cap.ci, cap.nombre, cap.edad, cap.raza, cap.sexo, cap.trabaja, cap.estudia, cap.nivel_escolar, cap.jubilado, cap.militante, cap.dosis, casa.id_casa, casa.numero, cap.id_direccion, dire.calle, dire.cdr, dire.zona, cap.id_fmc, fmc.bloque, fmc.delegacion  FROM SituacionSalud as cap, fmc, direccion as dire, casa WHERE cap.id_direccion=dire.id_direccion and cap.id_fmc=fmc.id_fmc and dire.id_casa=casa.id_casa",
  //   );

  //   final List<SituacionSaludAllInfoModel> list = res.isNotEmpty
  //       ? res.map((capt) => SituacionSaludAllInfoModel.fromJson(capt)).toList()
  //       : [];
  //   return list;
  // }

  //Contar registros
  Future<int> countSituacionSaludes() async {
    final res = await database.query('situacion_salud');

    final List<SituacionSaludModel> list = res.isNotEmpty
        ? res.map((capt) => SituacionSaludModel.fromJson(capt)).toList()
        : [];
    return list.length;
  }

//Actualizar Registros
  Future<int> updateSituacionSalud(
      SituacionSaludModel nuevaSituacionSalud) async {
    final res = await database.update(
      'situacion_salud',
      nuevaSituacionSalud.toJson(),
      where: 'id_captacion = ?',
      whereArgs: [nuevaSituacionSalud.id_captacion],
    );
    return res;
  }

//Eliminar Registros
  Future<int> deleteSituacionSalud(int ci) async {
    final res = await database
        .delete('situacion_salud', where: 'id_captacion = ?', whereArgs: [ci]);
    return res;
  }

  Future<int> deleteAll() async {
    final res = await database.rawDelete('DELETE FROM situacion_salud');
    return res;
  }
}
