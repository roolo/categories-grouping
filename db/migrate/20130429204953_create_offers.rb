class CreateOffers < ActiveRecord::Migration
  def change
    create_table :offers do |t|
      t.string :name
      t.references :product

      t.timestamps
    end
    add_index :offers, :product_id
  end
end
