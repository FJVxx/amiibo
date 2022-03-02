class AmiiboModel {
  String? amiiboSeries;
  String? character;
  String? gameSeries;
  String? head;
  String? image;
  String? name;
  String? tail;
  String? type;

  AmiiboModel(
      {this.amiiboSeries,
      this.character,
      this.gameSeries,
      this.head,
      this.image,
      this.name,
      this.tail,
      this.type});

  factory AmiiboModel.fromJsonMap(Map<String, dynamic> json) {
    return AmiiboModel(
        amiiboSeries: json['amiiboSeries'],
        character: json['character'],
        gameSeries: json['gameSeries'],
        head: json['head'],
        image: json['image'],
        name: json['name'],
        tail: json['tail'],
        type: json['type']);
  }
}
