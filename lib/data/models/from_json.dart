class FromJson {
  int? idCasa;

  FromJson({this.idCasa});

  factory FromJson.fromJson(Map<String, dynamic> json) => FromJson(
        idCasa: json["id_casa"] as int,
      );

  Map<String, dynamic> toJson() => {
        "id_casa": idCasa,
      };
}
