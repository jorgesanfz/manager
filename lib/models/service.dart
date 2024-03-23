class Service {
  final int id;
  final String name;
  final int price;

  Service(this.id, this.name, this.price);

  Service.empty()
      : id = 0,
        name = '',
        price = 0;

  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'name': name,
      'price': price,
    };
  }

  @override
  String toString() {
    return '$id, $name, $price';
  }
}