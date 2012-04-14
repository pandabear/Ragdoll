class Product
  include Mongoid::Document
  field :name, type: String
  field :price, type: Float
  field :description, type: String

  embedded_in :category
end
