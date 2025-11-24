import 'package:test/test.dart';
import '../lib/two_fer.dart';

void main() {
  group('Two-Fer', () {
    test('no name given', () {
      expect(twoFer(), equals('One for you, one for me.'));
    });

    test('a name given', () {
      expect(twoFer('Alice'), equals('One for Alice, one for me.'));
    });

    test('another name given', () {
      expect(twoFer('Bohdan'), equals('One for Bohdan, one for me.'));
    });
  });
}
