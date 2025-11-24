import 'package:scrabble_score/scrabble_score.dart';
import 'package:test/test.dart';

void main() {
  group('Scrabble Score', () {
    test('lowercase letter', () {
      expect(score('a'), equals(1));
    });

    test('uppercase letter', () {
      expect(score('A'), equals(1));
    });

    test('valuable letter', () {
      expect(score('f'), equals(4));
    });

    test('short word', () {
      expect(score('at'), equals(2));
    });

    test('short, valuable word', () {
      expect(score('zoo'), equals(12));
    });

    test('medium word', () {
      expect(score('street'), equals(6));
    });

    test('medium, valuable word', () {
      expect(score('quirky'), equals(22));
    });

    test('long, mixed-case word', () {
      expect(score('OxyphenButazone'), equals(41));
    });

    test('english-like word', () {
      expect(score('pinata'), equals(8));
    });

    test('empty input', () {
      expect(score(''), equals(0));
    });

    test('entire alphabet available', () {
      expect(score('abcdefghijklmnopqrstuvwxyz'), equals(87));
    });
  });
}
