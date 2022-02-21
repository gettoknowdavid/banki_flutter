import 'package:banki_flutter/core/usecase/usecase.dart';
import 'package:banki_flutter/features/shop/domain/entities/category.dart';
import 'package:banki_flutter/features/shop/domain/entities/category_attributes.dart';
import 'package:banki_flutter/features/shop/domain/entities/category_data.dart';
import 'package:banki_flutter/features/shop/domain/entities/product.dart';
import 'package:banki_flutter/features/shop/domain/entities/product_attributes.dart';
import 'package:banki_flutter/features/shop/domain/entities/product_data.dart';
import 'package:banki_flutter/features/shop/domain/entities/strapi_image.dart';
import 'package:banki_flutter/features/shop/domain/entities/strapi_image_attributes.dart';
import 'package:banki_flutter/features/shop/domain/entities/strapi_image_data.dart';
import 'package:banki_flutter/features/shop/domain/entities/strapi_images.dart';
import 'package:banki_flutter/features/shop/domain/repositories/shop_repository.dart';
import 'package:banki_flutter/features/shop/domain/usecases/get_all_products.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';

class MockShopRepository extends Mock implements ShopRepository {}

void main() {
  late MockShopRepository mockShopRepository;
  late GetAllProducts usecase;

  setUp(() {
    mockShopRepository = MockShopRepository();
    usecase = GetAllProducts(mockShopRepository);
  });

  List<Product> allTestProducts = const <Product>[
    Product(
      data: ProductData(
        id: 1,
        attributes: ProductAttributes(
          name: "Womb Chair",
          description:
              "Spectacular and exquisite are the true definitions of this timeless Womb Chair by Knoll Saarinen.",
          price: 499999,
          rating: 4,
          author: "Knoll Saarinen",
          category: Category(
            data: CategoryData(
              id: 3,
              attributes: CategoryAttributes(name: 'Chairs'),
            ),
          ),
          featuredImage: StrapiImage(
            data: StrapiImageData(
              attributes: StrapiImageAttributes(
                url:
                    "https://res.cloudinary.com/tintday/image/upload/v1643227074/Knoll_Saarinen_Womb_Chair_G03_watermarked_2k_0a3438e908.png",
              ),
            ),
          ),
          gallery: StrapiImages(
            data: [
              StrapiImageData(
                id: 42,
                attributes: StrapiImageAttributes(
                  url:
                      "https://res.cloudinary.com/tintday/image/upload/v1643227074/Knoll_Saarinen_Womb_Chair_G03_watermarked_2k_0a3438e908.png",
                ),
              ),
              StrapiImageData(
                id: 46,
                attributes: StrapiImageAttributes(
                  url:
                      "https://res.cloudinary.com/tintday/image/upload/v1643227074/Knoll_Saarinen_Womb_Chair_G12_watermarked_2k_978bb58874.png",
                ),
              ),
              StrapiImageData(
                id: 44,
                attributes: StrapiImageAttributes(
                  url:
                      "https://res.cloudinary.com/tintday/image/upload/v1643227074/Knoll_Saarinen_Womb_Chair_G03_watermarked_2k_0a3438e908.png",
                ),
              ),
            ],
          ),
        ),
      ),
    ),
  ];

  test(
    'should get a list of all the products in the repository',
    () async {
      when(mockShopRepository.getAllProducts()).thenAnswer(
        (_) async => Right(allTestProducts),
      );

      final result = await usecase(NoParams());

      expect(result, Right(allTestProducts));

      verify(mockShopRepository.getAllProducts());

      verifyNoMoreInteractions(mockShopRepository);
    },
  );
}
