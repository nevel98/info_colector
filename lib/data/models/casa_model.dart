class CasaModel {
  int? idCasa;
  String? numero;

  CasaModel({this.idCasa, this.numero});

  factory CasaModel.fromJson(Map<String, dynamic> json) => CasaModel(
        idCasa: json["id_casa"] as int,
        numero: json["numero"] as String,
      );

  Map<String, dynamic> toJson() => {
        "id_casa": idCasa,
        "numero": numero,
      };
}
