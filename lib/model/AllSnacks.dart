
class AllSnacks{
  final String name;
  final String image;
  AllSnacks({required this.name, required this.image});
  factory AllSnacks.fromJson(dynamic json) {
    return AllSnacks(
        name: json['title'] as String,
        image: json['image'] as String);
  }

  static List<AllSnacks> recipesFromSnapshot(List snapshot) {
    return snapshot.map((data) {
      return AllSnacks.fromJson(data);
    }).toList();
  }

  @override
  String toString(){
    return 'AllSnacks {name: $name, image: $image,}';
  }
}