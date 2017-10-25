class CreateItems < ActiveRecord::Migration[5.1]
  def change
    create_table :items do |t|
      t.string :name
      t.string :image_data
      t.string :description
      t.string :type
      t.decimal :price, precision: 15, scale: 2
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
