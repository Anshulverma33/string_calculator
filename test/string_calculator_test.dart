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

  test('supports custom delimiter specified at the beginning', () {
    expect(add('//;\n1;2'), 3);
  });

  test('throws exception for negative numbers with message', () {
    expect(
      () => add('1,-2,-4'),
      throwsA(predicate((e) =>
          e is FormatException &&
          e.message == 'negative numbers not allowed -2,-4')),
    );
  });


}
