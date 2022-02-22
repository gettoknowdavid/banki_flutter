import 'package:banki_flutter/features/shop/data/models/strapi_image_attributes_model.dart';
import 'package:banki_flutter/features/shop/domain/entities/strapi_image_attributes.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  const strapiImageAttributesModel = StrapiImageAttributesModel(url: 'url');

  test(
    'should be a sub class of the StrapiImageAttributes entity',
    () async {
      expect(
        strapiImageAttributesModel,
        isA<StrapiImageAttributes>(),
      );
    },
  );
}
