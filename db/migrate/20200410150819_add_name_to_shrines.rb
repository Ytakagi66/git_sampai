class AddNameToShrines < ActiveRecord::Migration[5.2]
  def change
    add_column :shrines, :name, :string
  end
end
