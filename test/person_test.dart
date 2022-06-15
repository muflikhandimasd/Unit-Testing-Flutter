import 'package:flutter_test/flutter_test.dart';
import 'package:unit_testing_flutter_training/person.dart';

void main() {
  group('Mengecek class Person', () {
    // Person adalah Tipenya
    // p adalah pointer/identifier/nama si object
    // Person() adalah object, constructor
    Person p = Person();
    test('Report Inisialisasi object person', () {
      print('test 1');
      // expect(actual, matcher)
      // actual adalah object yang akan diceknya
      // matcher adalah object yang untuk mencocokannya
      expect(p.name, equals('no name'));
      expect(p.age, equals(0));
    });

    test('Age harus positif', () {
      print('test 2');
      p.age = -5;
      expect(p.age, isPositive);
    });

    test('Angka keberuntungan harus 3 angka positif', () {
      print('test 3');
      expect(p.luckyNumbers,
          allOf([hasLength(equals(3)), isNot(anyElement(isNegative))]));
    });
  });

  setUp(() {
    print('Set Up');
  });

  tearDown(() {
    print('tear Down');
  });
}
