# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

category_offer_record   = CategoryOffer.create name: 'Cars'

# --------- Categories ---------

category_buick_record   = Category.create name: 'Buick',
                                          category_offer: category_offer_record

category_pickup_record  = Category.create name: 'Pickup',
                                          category_offer: category_offer_record

# --------- Products ---------

buicks = ['Trishield buick 1999', 'VentiPorts buick 1997', 'Sweepspear buick 1980'].map do |name|
  Product.create name: name,
                 category: category_buick_record
end

pickups = ['Mini Pickup 1999', 'Compact Pickup 1993', 'Mid-size pickup 1983'].map do |name|
  Product.create name: name,
                 category: category_pickup_record
end

# --------- Offers ---------

buicks.each do |product_record|
  Offer.create  name:     'CHEAP BUICK: '+product_record.name,
                product:  product_record
end

pickups.each do |product_record|
  Offer.create  name:     'CHEAP PICKUP: '+product_record.name,
                product:  product_record
end


