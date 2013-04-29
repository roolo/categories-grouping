class Offer < ActiveRecord::Base
  belongs_to :product
  attr_accessible :name, :product_id, :product

  validates_presence_of :name, :product
end
