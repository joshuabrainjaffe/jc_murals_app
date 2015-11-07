class CreateMurals < ActiveRecord::Migration
  def change
    create_table :murals do |t|
      t.string :title
      t.integer :year
      t.string :artist
      t.string :website
      t.text :description
      t.string :neighborhood
      t.string :address
      t.boolean :is_mural
      t.references :users
      t.timestamps null: false
    end
  end
end
