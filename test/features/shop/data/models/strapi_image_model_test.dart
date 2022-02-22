import 'package:banki_flutter/features/shop/data/models/strapi_image_attributes_model.dart';
import 'package:banki_flutter/features/shop/data/models/strapi_image_data_model.dart';
import 'package:banki_flutter/features/shop/data/models/strapi_image_model.dart';
import 'package:banki_flutter/features/shop/domain/entities/strapi_image.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  const strapiImageModel = StrapiImageModel(
    data: StrapiImageDataModel(
      attributes: StrapiImageAttributesModel(url: 'url'),
    ),
  );

  test(
    'should be a sub class of the StrapiImage entity',
    () async {
      expect(
        strapiImageModel,
        isA<StrapiImage>(),
      );
    },
  );
}
