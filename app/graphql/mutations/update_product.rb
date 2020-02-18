module Mutations
  class UpdateProduct < BaseMutation
    argument :id, ID, required: true
    argument :code, String, required: true
    argument :description, String, required: true

    type Types::ProductType

    def resolve(id:, code: nil, description: nil)

      product = Product.find_by!(id: id)

      product.update(
          code: code,
          description: description
      )
      product
    end
  end
end