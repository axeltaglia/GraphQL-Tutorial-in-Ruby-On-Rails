module Types
  class QueryType < Types::BaseObject

    # Products
    field :products, [ProductType], null: false

    def products
      Product.all
    end


    # Users
    field :users, [UserType], null: false

    def users
      User.all
    end
  end
end