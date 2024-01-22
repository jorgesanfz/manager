class Service {
  final int id;
  final String name;
  final int price;

  Service(this.id, this.name, this.price);

  @override
  String toString() {
    return '$id, $name, $price';
  }
}