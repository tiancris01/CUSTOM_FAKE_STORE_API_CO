// This is the model class for the product data. It contains
//the properties of the product data and a factory method to
//convert the JSON data to the model class.
class ProductModel {
  final int id;
  final String title;
  final double price;
  final String description;
  final String image;
  final String category;

  ProductModel({
    required this.id,
    required this.title,
    required this.price,
    required this.description,
    required this.image,
    required this.category,
  });

  // This is a factory method that converts the JSON data to the model class.
  factory ProductModel.fromJson(Map<String, dynamic> json) {
    return ProductModel(
      id: json['id'],
      title: json['title'],
      price: json['price'].toDouble(),
      description: json['description'],
      image: json['image'],
      category: json['category'],
    );
  }

  // This method is used to compare two objects of the model class.
  @override
  bool operator ==(covariant ProductModel other) {
    if (identical(this, other)) return true;

    return other.id == id &&
        other.title == title &&
        other.price == price &&
        other.description == description &&
        other.image == image &&
        other.category == category;
  }

  // This method is used to generate a hash code for the object.
  @override
  int get hashCode {
    return id.hashCode ^
        title.hashCode ^
        price.hashCode ^
        description.hashCode ^
        image.hashCode ^
        category.hashCode;
  }
}
