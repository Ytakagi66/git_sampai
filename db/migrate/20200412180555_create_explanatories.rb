class CreateExplanatories < ActiveRecord::Migration[5.2]
  def change
    create_table :explanatories do |t|
      t.string :content
      t.string :image
      t.timestamps
    end
  end
end
