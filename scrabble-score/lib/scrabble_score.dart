int score(String word) {
  int result = 0;

  for (var ch in word.toLowerCase().split('')) {
    if ('qz'.contains(ch)) {
      result += 10;
    } else if ('jx'.contains(ch)) {
      result += 8;
    } else if (ch == 'k') {
      result += 5;
    } else if ('fhvwy'.contains(ch)) {
      result += 4;
    } else if ('bcmp'.contains(ch)) {
      result += 3;
    } else if ('dg'.contains(ch)) {
      result += 2;
    } else {
      result += 1;
    }
  }

  return result;
}
