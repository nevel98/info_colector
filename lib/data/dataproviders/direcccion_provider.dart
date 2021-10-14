import 'package:info_colector/data/models/captacion_model.dart';
import 'package:info_colector/data/models/direccion_model.dart';
import 'package:info_colector/data/models/fmc_model.dart';
import 'package:info_colector/data/models/from_jason_direccion.dart';
import 'package:sqflite/sqflite.dart';

import 'db_provider.dart';

const int _idDireccion = 0;
const String _calle = "";
const int _idCasa = 0;
const int _cdr = 0;
const int _zona = 0;

class DireccionProvider {
  final Database database = DBProvider().database;

  static String createTable() {
    return 'CREATE TABLE direccion ('
        '$_idDireccion INTEGER PRIMARY KEY,'
        '$_calle TEXT,'
        '$_idCasa INTEGER,'
        '$_cdr INTEGER,'
        '$_zona INTEGER,'
        ')';
  }

  Future<int> nuevaDireccion(DireccionModel nueva) async {
    final res = await database.insert('direccion', nueva.toJson());
    return res;
  }

//SELECT - Obtener Información
  Future<DireccionModel?> getDireccionID(int id) async {
    final res = await database
        .query('direccion', where: 'id_direccion = ?', whereArgs: [id]);
    return res.isNotEmpty ? DireccionModel.fromJson(res.first) : null;
  }

  Future<int?> getDireccionUltimoID() async {
    final res = await database
        .rawQuery('SELECT id_direccion FROM direccion ORDER BY "ASC" LIMIT 1');
    return res.isNotEmpty ? FromJsonDire.fromJson(res.first).idDire : null;
  }

  Future<DireccionModel?> getDireccionTodo(
      String calle, int idCasa, int cdr, int zona) async {
    final res = await database.query('direccion',
        where: 'calle = ? and id_casa = ? and cdr = ? and zona = ?',
        whereArgs: [calle, idCasa, cdr, zona]);
    return res.isNotEmpty ? DireccionModel.fromJson(res.first) : null;
  }

  Future<List<DireccionModel>> getTodasDireccciones() async {
    // final res = await database.query('dcaptacion');
    final res = await database.rawQuery(
      "SELECT * FROM direccion",
    );

    final List<DireccionModel> list = res.isNotEmpty
        ? res.map((capt) => DireccionModel.fromJson(capt)).toList()
        : [];
    return list;
  }

  //Contar registros
  // Future<int> countCaptaciones() async {
  //   final res = await database.query('captacion');

  //   final List<CaptacionModel> list = res.isNotEmpty
  //       ? res.map((capt) => CaptacionModel.fromJson(capt)).toList()
  //       : [];
  //   return list.length;
  // }

//Actualizar Registros
  Future<int> updateDireccion(DireccionModel nueva) async {
    final res = await database.update(
      'direcccion',
      nueva.toJson(),
      where: 'id_direccion = ?',
      whereArgs: [nueva.idDireccion],
    );
    return res;
  }

//Eliminar Registros
  Future<int> deleteDireccion(int id) async {
    final res = await database
        .delete('direccion', where: 'id_direccion = ?', whereArgs: [id]);
    return res;
  }

  // Future<int> deleteAll() async {
  //   final res = await database.rawDelete('DELETE FROM dcaptacion');
  //   return res;
  // }
}
