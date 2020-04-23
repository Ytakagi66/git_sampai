class CreateTemples < ActiveRecord::Migration[5.2]
  def change
    create_table :temples do |t|
      t.string :title
      t.string :adress
      t.string :url
      t.string :article
      t.string :god
      t.string :goshuin
      t.string :image
      t.string :name

      t.timestamps
    end
  end
end
