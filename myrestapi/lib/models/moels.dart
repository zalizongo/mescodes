

class Products {
  int id;
  String title;
  dynamic price;
  String description;
  String image;
  Products({
    required this.id,
    required this.title,
    required this.price,
    required this.description,
    required this.image
  });
  factory Products.fromJson(Map<String,dynamic> json){
    return Products(
      id: json['id'] as int,
      title: json['title'] as String,
      price: json['price'] as dynamic,
      description: json['description'] as String,
      image: json['image'] as String
    );
  }
  Map<String,dynamic> toJson(){
    return {
      'id':id,
      'title':title,
      'price':price,
      'description':description,
      'image':image,
    };
  }
}