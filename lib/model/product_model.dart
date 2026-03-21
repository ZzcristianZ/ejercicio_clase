class ProductModel {
  int id;
  String name;
  String status;
  String species;
  String gender;
  String origin;
  String image;

  ProductModel({
    required this.id,
    required this.name,
    required this.status,
    required this.species,
    required this.gender,
    required this.origin,
    required this.image,
  });

  factory ProductModel.fromJson(Map<String, dynamic> json) {


    return ProductModel(
      id: json["id"] ?? 0,
      name: json["name"] ?? "No name",
      status: json["status"] ?? "no hay estado",
      species: json["species"] ?? "no hay specie",
      gender: json["gender"] ?? "no hay gender",
      origin: json["origin"]?["name"] ?? "Unknown",
      image: json["image"] ?? "",
    );
  }
}