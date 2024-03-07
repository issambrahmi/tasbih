class Azkar {
  final int id;
  final int count;
  final String azkar;
  final String desc;

  Azkar({required this.id,required this.count,required this.azkar,required this.desc});

  factory Azkar.fromJson(Map<String, dynamic> json) {
    return Azkar(
      id: json["id"],
      count:  json["count"],
      azkar: json["azkar"],
      desc: json["desc"],
    );
  }
}
