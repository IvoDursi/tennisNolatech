import 'package:nolatech/extensions/extensions.dart';

extension StringExtension on String {
  Field get fieldFromString {
    switch (this) {
      case 'A':
        return Field.A;
      case 'B':
        return Field.B;
      case 'C':
        return Field.C;
      default:
        return Field.A;
    }
  }
}
