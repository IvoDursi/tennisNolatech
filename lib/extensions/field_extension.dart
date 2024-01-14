import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:nolatech/app/resources/images.dart';

extension FieldExtension on Field {
  String get title {
    switch (this) {
      case Field.A:
        return 'Cancha A';
      case Field.B:
        return 'Cancha B';
      case Field.C:
        return 'Cancha C';
    }
  }

  String get image {
    switch (this) {
      case Field.A:
        return AppImages.fieldA;
      case Field.B:
        return AppImages.fieldB;
      case Field.C:
        return AppImages.fieldC;
    }
  }

  String get location {
    switch (this) {
      case Field.A:
        return 'Buenos Aires - Caballito';
      case Field.B:
        return 'Buenos Aires - Chacarita';
      case Field.C:
        return 'Buenos Aires - Almagro';
    }
  }

  LatLng get coordinates {
    switch (this) {
      case Field.A:
        return const LatLng(-34.6166192, -58.4653298);
      case Field.B:
        return const LatLng(-34.5880465, -58.4630273);
      case Field.C:
        return const LatLng(-34.6098704, -58.4329262);
    }
  }

  String get price {
    switch (this) {
      case Field.A:
        return '15';
      case Field.B:
        return '22';
      case Field.C:
        return '20';
    }
  }
}

enum Field {
  A,
  B,
  C,
}
