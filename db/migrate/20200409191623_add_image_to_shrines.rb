class AddImageToShrines < ActiveRecord::Migration[5.2]
  def change
    add_column :shrines, :image, :string
  end
end
