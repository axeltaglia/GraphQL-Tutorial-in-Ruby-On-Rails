module Mutations
  class CreateProduct < BaseMutation
    argument :code, String, required: true
    argument :description, String, required: true

    type Types::ProductType

    def resolve(code: nil, description: nil)
      Product.create!(
          code: code,
          description: description
      )
    end
  end
end