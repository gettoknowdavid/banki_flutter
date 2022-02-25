import 'package:banki_flutter/features/shop/data/models/category_attributes_model.dart';
import 'package:banki_flutter/features/shop/data/models/category_data_model.dart';
import 'package:banki_flutter/features/shop/data/models/category_model.dart';
import 'package:banki_flutter/features/shop/data/models/gallery_model.dart';
import 'package:banki_flutter/features/shop/data/models/product_attributes_model.dart';
import 'package:banki_flutter/features/shop/data/models/product_datum_model.dart';
import 'package:banki_flutter/features/shop/data/models/product_image_attributes_model.dart';
import 'package:banki_flutter/features/shop/data/models/product_image_data_model.dart';
import 'package:banki_flutter/features/shop/data/models/product_image_model.dart';
import 'package:banki_flutter/features/shop/data/models/product_response_data_model.dart';
import 'package:banki_flutter/features/shop/data/models/product_response_model.dart';
import 'package:banki_flutter/features/shop/data/models/products_model.dart';
import 'package:banki_flutter/features/shop/domain/entities/category.dart';
import 'package:banki_flutter/features/shop/domain/entities/category_attributes.dart';
import 'package:banki_flutter/features/shop/domain/entities/category_data.dart';
import 'package:banki_flutter/features/shop/domain/entities/product_attributes.dart';
import 'package:banki_flutter/features/shop/domain/entities/gallery.dart';
import 'package:banki_flutter/features/shop/domain/entities/product_datum.dart';
import 'package:banki_flutter/features/shop/domain/entities/product_image.dart';
import 'package:banki_flutter/features/shop/domain/entities/product_image_attributes.dart';
import 'package:banki_flutter/features/shop/domain/entities/product_image_data.dart';
import 'package:banki_flutter/features/shop/domain/entities/product_response.dart';
import 'package:banki_flutter/features/shop/domain/entities/product_response_data.dart';
import 'package:banki_flutter/features/shop/domain/entities/products.dart';

const tResponseModel = ProductResponseModel(
  data: ProductResponseDataModel(
    products: ProductsModel(data: allProductDatumModel),
  ),
);

const allProductDatumModel = <ProductDatumModel>[
  ProductDatumModel(id: "1", attributes: productAttributesModel),
];

const productAttributesModel = ProductAttributesModel(
  name: "Womb Chair",
  description: "description",
  price: 499999,
  rating: 4,
  author: "Knoll Saarinen",
  category: CategoryModel(
    data: CategoryDataModel(
      id: "3",
      attributes: CategoryAttributesModel(name: 'Chairs'),
    ),
  ),
  featuredImage: ProductImageModel(
    data: ProductImageDataModel(
      id: "42",
      attributes: ProductImageAttributesModel(url: "url"),
    ),
  ),
  gallery: GalleryModel(
    data: <ProductImageDataModel>[
      ProductImageDataModel(
        id: "42",
        attributes: ProductImageAttributesModel(url: "url"),
      ),
      ProductImageDataModel(
        id: "46",
        attributes: ProductImageAttributesModel(url: "url"),
      ),
      ProductImageDataModel(
        id: "44",
        attributes: ProductImageAttributesModel(url: "url"),
      ),
    ],
  ),
);

const tResponse = ProductResponse(
  data: ProductResponseData(
    products: Products(data: allTestProducts),
  ),
);

const List<ProductDatum> allTestProducts = <ProductDatum>[
  ProductDatum(
    id: "1",
    attributes: ProductAttributes(
      name: "Womb Chair",
      description:
          "Spectacular and exquisite are the true definitions of this timeless Womb Chair by Knoll Saarinen.",
      price: 499999,
      rating: 4,
      author: "Knoll Saarinen",
      category: Category(
        data: CategoryData(
          id: "3",
          attributes: CategoryAttributes(name: 'Chairs'),
        ),
      ),
      featuredImage: ProductImage(
        data: ProductImageData(
          id: "42",
          attributes: ProductImageAttributes(url: "url"),
        ),
      ),
      gallery: Gallery(
        data: [
          ProductImageData(
            id: "42",
            attributes: ProductImageAttributes(url: "url"),
          ),
          ProductImageData(
            id: "46",
            attributes: ProductImageAttributes(url: "url"),
          ),
          ProductImageData(
            id: "44",
            attributes: ProductImageAttributes(url: "url"),
          ),
        ],
      ),
    ),
  )
];

// const List<ProductModel> allTestModels = <ProductModel>[
//   ProductModel(
//     data: ProductDatumModel(
//       id: "1",
//       attributes: productAttributesModel,
//     ),
//   ),
// ];


// const ProductResponse tProductResponse = ProductResponse(
//   products: allTestProducts,
// );

// const ProductResponseModel tProductResponseModel = ProductResponseModel(
//   products: allTestModels,
// );
