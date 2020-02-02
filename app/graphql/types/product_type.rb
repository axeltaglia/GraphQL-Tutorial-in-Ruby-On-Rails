module Types
  class ProductType < BaseObject
    field :id, ID, null: false
    field :code, String, null: false
    field :description, String, null: false
  end
end