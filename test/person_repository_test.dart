// ignore_for_file: avoid_print

import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';
import 'package:test_boilerplate/person_repository.dart';

class RepositoryMock extends Mock implements PersonRepository {}

void main() {
  final repositoryMock = RepositoryMock();

  test(
    'Deve pegar uma lista de person',
    () async {
      final list = await repositoryMock.getAllPersons();

      expect(list.isNotEmpty, equals(true));

      expect(list.first.name, equals("name 1"));
    },
  );
}
