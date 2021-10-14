import 'package:info_colector/data/models/captacion_model.dart';
import 'package:info_colector/data/models/fmc_model.dart';
import 'package:sqflite/sqflite.dart';

import 'db_provider.dart';

const int _idFMC = 0;
const int _bloque = 0;
const int _delegacion = 0;

class FMCProvider {
  final Database database = DBProvider().database;

  static String createTable() {
    return 'CREATE TABLE fmc ('
        '$_idFMC INTEGER PRIMARY KEY,'
        '$_bloque INTEGER,'
        '$_delegacion INTEGER'
        ')';
  }

  Future<int> nuevaFMC(FMCModel nueva) async {
    final res = await database.rawInsert(
        'INSERT INTO fmc (bloque, direccion) VALUES(${nueva.bloque},${nueva.delegacion})');
    return res;
  }

//SELECT - Obtener Información
  Future<FMCModel?> getFmcID(int id) async {
    final res =
        await database.query('fmc', where: 'id_fmc = ?', whereArgs: [id]);
    return res.isNotEmpty ? FMCModel.fromJson(res.first) : null;
  }

  Future<FMCModel?> getFmcBloqueDelegacion(int bloq, int dele) async {
    final res = await database.query('fmc',
        where: 'bloque = ? and delegacion = ?', whereArgs: [bloq, dele]);
    return res.isNotEmpty ? FMCModel.fromJson(res.first) : null;
  }

  // Future<List<CaptacionModel>> getTodasCaptaciones() async {
  //   // final res = await database.query('dcaptacion');
  //   final res = await database.rawQuery(
  //     "SELECT * FROM captacion",
  //   );

  //   final List<CaptacionModel> list = res.isNotEmpty
  //       ? res.map((capt) => CaptacionModel.fromJson(capt)).toList()
  //       : [];
  //   return list;
  // }

  //Contar registros
  // Future<int> countCaptaciones() async {
  //   final res = await database.query('captacion');

  //   final List<CaptacionModel> list = res.isNotEmpty
  //       ? res.map((capt) => CaptacionModel.fromJson(capt)).toList()
  //       : [];
  //   return list.length;
  // }

//Actualizar Registros
  Future<int> updateFmc(FMCModel nueva) async {
    final res = await database.update(
      'fmc',
      nueva.toJson(),
      where: 'id_fmc = ?',
      whereArgs: [nueva.idFMC],
    );
    return res;
  }

//Eliminar Registros
  Future<int> deleteFmc(int id) async {
    final res =
        await database.delete('fmc', where: 'id_fmc = ?', whereArgs: [id]);
    return res;
  }

  // Future<int> deleteAll() async {
  //   final res = await database.rawDelete('DELETE FROM dcaptacion');
  //   return res;
  // }
}
