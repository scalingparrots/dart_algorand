class WrongKeyLengthError implements Exception {
  @override
  String toString() => 'key length must be 58';
}

class WrongChecksumError implements Exception {
  @override
  String toString() =>'checksum failed to validate';
}


class WrongMnemonicLengthError implements Exception {
  @override
  String toString() => 'mnemonic length must be 25';
}

class WrongKeyBytesLengthError implements Exception {
  @override
  String toString() => 'key length in bytes must be 32';
}

class WordNotInList implements Exception {
  @override
  String toString() => 'word not in list';
}