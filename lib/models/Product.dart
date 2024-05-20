// Assuming you have a Product model like this
class Product {
  final String id;
  final String name;
  final String description;

  Product({required this.id, required this.name, required this.description});

  factory Product.fromJson(Map<String, dynamic> json) {
    return Product(
      id: json['id'].toString(),
      name: json['name'],
      description: json['description'],
    );
  }
}
