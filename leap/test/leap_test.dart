import 'package:leap/leap.dart';
import 'package:test/test.dart';

void main() {
  final leap = Leap();

  group('Leap', () {
    test('year not divisible by 4 in common year', () {
      expect(leap.leapYear(2015), isFalse);
    });

    test('year divisible by 2, not divisible by 4 in common year', () {
      expect(leap.leapYear(1970), isFalse);
    });

    test('year divisible by 4, not divisible by 100 in leap year', () {
      expect(leap.leapYear(1996), isTrue);
    });

    test('year divisible by 4 and 5 is still a leap year', () {
      expect(leap.leapYear(1960), isTrue);
    });

    test('year divisible by 100, not divisible by 400 in common year', () {
      expect(leap.leapYear(2100), isFalse);
    });

    test('year divisible by 100 but not by 3 is still not a leap year', () {
      expect(leap.leapYear(1900), isFalse);
    });

    test('year divisible by 400 is leap year', () {
      expect(leap.leapYear(2000), isTrue);
    });

    test('year divisible by 400 but not by 125 is still a leap year', () {
      expect(leap.leapYear(2400), isTrue);
    });

    test('year divisible by 200, not divisible by 400 in common year', () {
      expect(leap.leapYear(1800), isFalse);
    });
  });
}
