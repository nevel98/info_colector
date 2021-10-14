class DireccionModel {
  int? idDireccion;
  String? calle;
  int? idCasa;
  int? cdr;
  int? zona;

  DireccionModel(
      {this.idDireccion, this.calle, this.idCasa, this.cdr, this.zona});

  factory DireccionModel.fromJson(Map<String, dynamic> json) => DireccionModel(
        idDireccion: json["id_direccion"] as int,
        calle: json["calle"] as String,
        idCasa: json["id_casa"] as int,
        cdr: json["cdr"] as int,
        zona: json["zona"] as int,
      );

  Map<String, dynamic> toJson() => {
        "id_direccion": idDireccion,
        "calle": calle,
        "id_casa": idCasa,
        "cdr": cdr,
        "zona": zona,
      };
}
