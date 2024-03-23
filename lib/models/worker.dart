class Worker {
  final int id;
  final String name;
  final int phone;

  Worker(this.id, this.name, this.phone);

  Worker.empty()
      : id = 0,
        name = '',
        phone = 0;

  @override
  String toString() {
    return '$id, $name, $phone';
  }
}