class Client {
  final int id;
  final String name;
  final String surname;
  final int phone;

  Client(this.id, this.name, this.phone, this.surname)

  @override
  String toString() {
    return '$id, $name, $phone';
  }
}