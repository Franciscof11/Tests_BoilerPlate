import 'package:flutter_test/flutter_test.dart';
import 'package:test_boilerplate/person.dart';

void main() {
  final person = Person(name: 'Chico', age: 22, height: 1.80, weight: 92);

  test(
    'Imc deve vir 28.4',
    () {
      expect(person.imc, 28.4);
    },
  );
}
