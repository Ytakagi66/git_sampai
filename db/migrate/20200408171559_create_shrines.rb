class CreateShrines < ActiveRecord::Migration[5.2]
  def change
    create_table :shrines do |t|
      t.string :title
      t.string :adress
      t.string :url
      t.string :article
      t.string :god
      t.string :goshuin

      t.timestamps
    end
  end
end
