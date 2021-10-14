class CaptacionModel {
  int? ci;
  String? nombre;
  int? edad;
  String? raza;
  String? sexo;
  String? trabaja;
  String? estudia;
  String? nivelEscolar;
  String? jubilado;
  String? militante;
  String? dosis;
  int? idFMC;
  int? idDirecccion;
  int? idCasa;

  CaptacionModel(
      {this.ci,
      this.nombre,
      this.edad,
      this.raza,
      this.sexo,
      this.trabaja,
      this.estudia,
      this.nivelEscolar,
      this.jubilado,
      this.militante,
      this.dosis,
      this.idFMC,
      this.idDirecccion,
      this.idCasa});

  factory CaptacionModel.fromJson(Map<String, dynamic> json) => CaptacionModel(
        ci: json["ci"] as int,
        nombre: json["nombre"] as String,
        edad: json["edad"] as int,
        raza: json["raza"] as String,
        sexo: json["sexo"] as String,
        trabaja: json["trabaja"] as String,
        estudia: json["estudia"] as String,
        nivelEscolar: json["nivel_escolar"] as String?,
        jubilado: json["jubilado"] as String,
        militante: json["militante"] as String,
        dosis: json["dosis"] as String,
        idFMC: json["id_fmc"] as int?,
        idDirecccion: json["id_direccion"] as int,
        idCasa: json["id_casa"] as int?,
      );

  Map<String, dynamic> toJson() => {
        "ci": ci,
        "nombre": nombre,
        "edad": edad,
        "raza": raza,
        "sexo": sexo,
        "trabaja": trabaja,
        "estudia": estudia,
        "nivel_escolar": nivelEscolar,
        "jubilado": jubilado,
        "militante": militante,
        "dosis": dosis,
        "id_fmc": idFMC,
        "id_direccion": idDirecccion,
        "id_casa": idCasa,
      };
}
