class Client {
  final int id;
  final String name;
  final String surname;
  final int phone;

  Client(this.id, this.name, this.phone, this.surname);

  Client.empty()
      : id = 0,
        name = '',
        surname = '',
        phone = 0;

  Map<String, dynamic> toJson() => {
    'id': id,
    'name': name,
    'surname': surname,
    'phone': phone,
  };

  @override
  String toString() {
    return '$id, $name, $phone';
  }
}
