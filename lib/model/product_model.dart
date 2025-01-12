class ProductModel {
  final int id;
  final String name;
  final double price;
  final String currency;
  final String image;

  ProductModel({
    required this.id,
    required this.name,
    required this.price,
    required this.currency,
    required this.image,
  });

  factory ProductModel.fromJson(Map map) {
    return ProductModel(
      id: map['id'],
      name: map['name'],
      price: map['price'],
      currency: map['currency'],
      image: map['image'],
    );
  }
  static List<ProductModel> toList(List list) {
    return list.map((e) {
      return ProductModel.fromJson(e);
    }).toList();
  }
}
