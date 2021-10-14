import 'package:info_colector/data/models/casa_model.dart';
import 'package:info_colector/data/models/fmc_model.dart';
import 'package:info_colector/data/models/from_json.dart';
import 'package:sqflite/sqflite.dart';

import 'db_provider.dart';

const int _idCasa = 0;
const String _numero = "";

class CasaProvider {
  final Database database = DBProvider().database;

  static String createTable() {
    return 'CREATE TABLE casa ('
        '$_idCasa INTEGER PRIMARY KEY,'
        '$_numero TEXT,'
        ')';
  }

  Future<int> nuevaCasa(CasaModel nueva) async {
    final res = await database.insert('casa', nueva.toJson());
    return res;
  }

//SELECT - Obtener Información
  Future<CasaModel?> getCasaID(int id) async {
    final res =
        await database.query('casa', where: 'id_casa = ?', whereArgs: [id]);
    return res.isNotEmpty ? CasaModel.fromJson(res.first) : null;
  }

  Future<int?> getCasaUltimoID() async {
    final res = await database
        .rawQuery('SELECT id_casa FROM casa ORDER BY "ASC" LIMIT 1');
    return res.isNotEmpty ? FromJson.fromJson(res.first).idCasa : null;
  }

  Future<CasaModel?> getCasaNumero(int id) async {
    final res =
        await database.query('casa', where: 'id_casa = ?', whereArgs: [id]);
    return res.isNotEmpty ? CasaModel.fromJson(res.first) : null;
  }

  Future<List<CasaModel>> getTodasCasas() async {
    // final res = await database.query('dcaptacion');
    final res = await database.rawQuery(
      "SELECT * FROM casa",
    );

    final List<CasaModel> list = res.isNotEmpty
        ? res.map((capt) => CasaModel.fromJson(capt)).toList()
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
  Future<int> updateFmc(CasaModel nueva) async {
    final res = await database.update(
      'casa',
      nueva.toJson(),
      where: 'id_casa = ?',
      whereArgs: [nueva.idCasa],
    );
    return res;
  }

//Eliminar Registros
  Future<int> deleteCasa(int id) async {
    final res =
        await database.delete('casa', where: 'id_casa = ?', whereArgs: [id]);
    return res;
  }

  // Future<int> deleteAll() async {
  //   final res = await database.rawDelete('DELETE FROM dcaptacion');
  //   return res;
  // }
}
