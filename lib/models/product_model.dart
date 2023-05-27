class ProductModel {
  final int id;
  final String title;
  final int price;
  final String description;
  final String category;
  final String image;
  final RattingModel ratting;
  ProductModel({
    required this.id,
    required this.title,
    required this.price,
    required this.description,
    required this.category,
    required this.image,
    required this.ratting,
  });

  factory ProductModel.fromJson(jsonData) {
    return ProductModel(
      id: jsonData['id'],
      title: jsonData['title'],
      price: jsonData['price'],
      description: jsonData['description'],
      category: jsonData['category'],
      image: jsonData['image'],
      ratting: RattingModel.fromJson(jsonData['ratings']),
    );
  }
}

class RattingModel {
  final int rate;
  final int count;

  RattingModel(this.rate, this.count);

  factory RattingModel.fromJson(jsonData) {
    return RattingModel(jsonData['rate'], jsonData['count']);
  }
}
