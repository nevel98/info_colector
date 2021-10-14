class SituacionSaludModel {
  int? id_captacion;
  String? descripcion;

  SituacionSaludModel({this.id_captacion, this.descripcion});

  factory SituacionSaludModel.fromJson(Map<String, dynamic> json) =>
      SituacionSaludModel(
        id_captacion: json["id_captacion"] as int,
        descripcion: json["descripcion"] as String,
      );

  Map<String, dynamic> toJson() => {
        "id_captacion": id_captacion,
        "descripcion": descripcion,
      };
}
