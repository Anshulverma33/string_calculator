import 'package:test/test.dart';
import 'package:string_calculator/string_calculator.dart';

void main() {
  test('returns 0 for an empty string', () {
    expect(add(''), 0);
  });

  test('returns the number itself when one number is passed', () {
    expect(add('5'), 5);
  });

  test('returns sum of two comma-separated numbers', () {
    expect(add('1,2'), 3);
  });

  test('handles newline as valid delimiter', () {
    expect(add('1\n2,3'), 6);
  });


}
