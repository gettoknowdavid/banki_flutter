mixin GqlQuery {
  static String allProductsQuery = '''
  query ProductsQuery {
    products {
      data {
        id
        attributes {
          name
          description
          price
          rating
          author
          category {
            data {
              id
              attributes {
                name
                slug
              }
            }
          }
          featuredImage {
            data {
              id
              attributes {
                url
              }
            }
          }
          gallery {
            data {
              id
              attributes {
                url
              }
            }
          }
        }
      }
    }
  }
  ''';
}
