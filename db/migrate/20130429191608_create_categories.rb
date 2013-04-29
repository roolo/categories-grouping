class CreateCategories < ActiveRecord::Migration
  def change
    create_table :categories do |t|
      t.string :name
      t.references :category_offer

      t.timestamps
    end
    add_index :categories, :category_offer_id
  end
end
