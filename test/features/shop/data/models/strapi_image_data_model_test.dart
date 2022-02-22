import 'package:banki_flutter/features/shop/data/models/strapi_image_attributes_model.dart';
import 'package:banki_flutter/features/shop/data/models/strapi_image_data_model.dart';
import 'package:banki_flutter/features/shop/domain/entities/strapi_image_data.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  const strapiImageDataModel = StrapiImageDataModel(
    attributes: StrapiImageAttributesModel(url: 'url'),
  );

  test(
    'should be a sub class of the StrapiImageData entity',
    () async {
      expect(
        strapiImageDataModel,
        isA<StrapiImageData>(),
      );
    },
  );
}
