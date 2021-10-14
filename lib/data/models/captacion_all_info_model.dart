class CaptacionAllInfoModel {
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
  int? idCasa;
  String? numero;
  int? idDirecccion;
  String? calle;
  int? cdr;
  int? zona;
  int? idFMC;
  int? bloque;
  int? delegacion;

  CaptacionAllInfoModel(
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
      this.idCasa,
      this.numero,
      this.idDirecccion,
      this.calle,
      this.cdr,
      this.zona,
      this.idFMC,
      this.bloque,
      this.delegacion});

  factory CaptacionAllInfoModel.fromJson(Map<String, dynamic> json) =>
      CaptacionAllInfoModel(
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
        idCasa: json["id_casa"] as int,
        numero: json["numero"] as String,
        idDirecccion: json["id_direccion"] as int,
        calle: json["calle"] as String,
        cdr: json["cdr"] as int,
        zona: json["zona"] as int,
        idFMC: json["id_fmc"] as int?,
        bloque: json["bloque"] as int,
        delegacion: json["delegacion"] as int,
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
        "id_casa": idCasa,
        "numero": numero,
        "id_direccion": idDirecccion,
        "calle": calle,
        "cdr": cdr,
        "zona": zona,
        "id_fmc": idFMC,
        "bloque": bloque,
        "delegacion": delegacion,
      };
}
