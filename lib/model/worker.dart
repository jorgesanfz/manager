class Worker {
  final int id;
  final String name;
  final int phone;

  Worker(this.id, this.name, this.phone);

  @override
  String toString() {
    return '$id, $name, $phone';
  }
}