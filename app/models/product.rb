class Product < ActiveRecord::Base
  belongs_to :category
  attr_accessible :name, :category_id, :category

  validates_presence_of :category

  def to_s
    name
  end
end
