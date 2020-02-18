module Types
  class QueryType < Types::BaseObject
    # Products
    field :products, [ProductType], null: false

    def products
      if !context[:current_user]
        Rails.logger.debug("NO ESTA LOGUEADO")
        raise "NOT LOGGED IN"
      else
        Rails.logger.debug("ESTA REEEE LOGUEADO")
        Rails.logger.debug(context[:current_user].email)
      end
      Product.all
    end


    # Users
    field :users, [UserType], null: false

    def users
      User.all
    end

  end
end