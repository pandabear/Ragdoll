class Product
  include Mongoid::Document
  include Mongoid::Timestamps
  field :name, type: String
  field :price, type: Float, default: 0
  field :description, type: String

  belongs_to :category
end
