// ignore_for_file: unnecessary_this

class Coche {
  late String marca, placa;

  Coche(this.marca, this.placa);

  @override
  String toString() {
    return '${this.marca} ${this.placa}';
  }
}
