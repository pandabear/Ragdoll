class Category
  include Mongoid::Document
  field :name, type: String

  embeds_many :products
end
