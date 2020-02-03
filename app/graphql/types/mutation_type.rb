module Types
  class MutationType < Types::BaseObject
    field :create_user, mutation: Mutations::CreateUser
    field :create_product, mutation: Mutations::CreateProduct
  end
end
