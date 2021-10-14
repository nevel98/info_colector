class FMCModel {
  int? idFMC;
  int? bloque;
  int? delegacion;

  FMCModel({this.idFMC, this.bloque, this.delegacion});

  factory FMCModel.fromJson(Map<String, dynamic> json) => FMCModel(
        idFMC: json["id_fmc"] as int,
        bloque: json["bloque"] as int,
        delegacion: json["delegacion"] as int,
      );

  Map<String, dynamic> toJson() => {
        "id_fmc": idFMC,
        "bloque": bloque,
        "delegacion": delegacion,
      };
}
