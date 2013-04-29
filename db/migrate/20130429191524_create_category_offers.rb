class CreateCategoryOffers < ActiveRecord::Migration
  def change
    create_table :category_offers do |t|
      t.string :name

      t.timestamps
    end
  end
end
