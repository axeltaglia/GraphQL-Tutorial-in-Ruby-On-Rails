# README

This README would normally document whatever steps are necessary to get the
application up and running.

Things you may want to cover:

* Ruby version

* System dependencies

* Configuration

* Database creation

* Database initialization

* How to run the test suite

* Services (job queues, cache servers, search engines, etc.)

* Deployment instructions

* ...



```
gem install bundler
gem install rails -v 5.2.2
rails new graphql-tutorial -d mysql
cd graphql-tutorial
bundle exec rails db:create
bundle exec rails server

```

GraphQL installation

```
gem 'graphql', '1.8.13'
bundle install
rails generate graphql:install
```

MODEL Product

```
rails g model Product code:string description:string
rake db:migrate 
```

Writing seed

```ruby
Product.create! code: 'P1', description: 'Pencil p1'
Product.create! code: 'P2', description: 'Pencil p2'
```

Reload database with seeds

```
rake db:reset
```

Writing Type for Product

```ruby
# app/graphql/types/product_type.rb
module Types
  class ProductType < BaseObject
    field :id, ID, null: false
    field :code, String, null: false
    field :description, String, null: false
  end
end
``` 

Route for allProducts

```ruby
# app/graphql/types/query_type.rb
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


```