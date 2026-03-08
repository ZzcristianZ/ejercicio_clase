

class ProductModel {
  int id;
  String name;
  String ki;
  String race;
  String gender;
  String description;
  String imagen;

  ProductModel({
    required this.id,
    required this.name,
    required this.ki,
    required this.race,
    required this.gender,
    required this.description,
    required this.imagen,
  });

  factory ProductModel.fromJson(Map<String, dynamic> json) => ProductModel(
    id: json["id"] ?? 0,
    name: json["name"] ?? 'not name',
    ki: json["ki"] ?? 'not ki',
    race: json["race"] ?? 'not race',
    gender: json["gender"] ?? 'not gender',
    description: json["description"] ?? 'not description', 
    imagen: json["image"] ,
  );
}
