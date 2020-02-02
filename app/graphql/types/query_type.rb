module Types
  class QueryType < Types::BaseObject
    # Add root-level fields here.
    # They will be entry points for queries on your schema.

    field :all_products, [ProductType], null: false

    def all_products
      Product.all
    end
  end
end
