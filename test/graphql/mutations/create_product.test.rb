require 'test_helper'

class Mutations::CreateProductTest < ActiveSupport::TestCase
  def perform(user: nil, **args)
    Mutations::CreateProduct.new(object: nil, context: {}).resolve(args)
  end

  test 'create a new product' do
    product = perform(
        code: 'code',
        description: 'description',
        )

    assert product.persisted?
    assert_equal product.code, 'code'
    assert_equal product.description, 'description'
  end
end