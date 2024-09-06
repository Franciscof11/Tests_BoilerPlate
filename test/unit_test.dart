// ignore_for_file: avoid_print

import 'package:flutter_test/flutter_test.dart';
import 'package:test_boilerplate/person.dart';

void main() {
  final person = Person(name: 'Chico', age: 16, height: 1.80, weight: 92);
  setUp(
    () {
      print('Inicia o test');
    },
  );

  tearDown(
    () {
      print('Finaliza o test');
    },
  );

  test(
    'Imc deve vir 28.4',
    () {
      expect(person.imc, 28.4);
    },
  );

  group('Testes de idade', () {
    test(
      'Se idade maior ou igual a 18, isOlder deve ser true',
      () {
        expect(person.isOlder, true);
      },
    );

    test(
      'Se idade menor que 18, isOlder deve ser false',
      () {
        expect(person.isOlder, false);
      },
    );
  });
}
