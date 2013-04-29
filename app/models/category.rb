class Category < ActiveRecord::Base
  belongs_to :category_offer
  attr_accessible :name, :category_offer_id, :category_offer

  validates_presence_of :category_offer

  def to_s
    name
  end
end
