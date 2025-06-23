import 'package:test/test.dart';
import 'package:string_calculator/string_calculator.dart';

void main() {
  test('returns 0 for an empty string', () {
    expect(add(''), 0);
  });

  test('returns the number itself when one number is passed', () {
    expect(add('5'), 5);
  });

}
