import 'package:dio/dio.dart';
import 'package:test_boilerplate/person.dart';

class PersonRepository {
  Future<List<Person>> getAllPersons() async {
    try {
      final dio = Dio();

      final response = await dio.get('https://66df089fde4426916ee356e5.mockapi.io/person/persons');

      if (response.statusCode == 200) {
        final responseMap = response.data;

        final List<Person> personList = responseMap.map<Person>((person) => Person.fromMap(person)).toList();

        return personList;
      } else {
        throw Exception('Erro na requisição: ${response.statusCode} - ${response.statusMessage}');
      }
    } catch (e) {
      throw Exception('Erro: $e');
    }
  }
}
