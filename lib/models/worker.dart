class Worker {
  final int id;
  final String name;
  final int phone;

  Worker(this.id, this.name, this.phone);

  Worker.empty()
      : id = 0,
        name = '',
        phone = 0;

  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'name': name,
      'phone': phone,
    };
  }

  @override
  String toString() {
    return '$id, $name, $phone';
  }
}