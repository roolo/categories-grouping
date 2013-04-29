class CategoryOffer < ActiveRecord::Base
  attr_accessible :name, :category_ids

  has_many :categories

  def to_s
    name
  end

end
