class CreateAds < ActiveRecord::Migration[7.0]
  def change
    create_table :ads do |t|
      t.string :title
      t.text :description
      t.string :category
      t.text :address
      t.integer :price_per_day
      t.date :availability_date
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
