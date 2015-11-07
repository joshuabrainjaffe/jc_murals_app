class AddImageToMurals < ActiveRecord::Migration
  def change
    add_column :murals, :image, :string
  end
end
