class FromJsonDire {
  int? idDire;

  FromJsonDire({this.idDire});

  factory FromJsonDire.fromJson(Map<String, dynamic> json) => FromJsonDire(
        idDire: json["id_direccion"] as int,
      );

  Map<String, dynamic> toJson() => {
        "id_direcccion": idDire,
      };
}
