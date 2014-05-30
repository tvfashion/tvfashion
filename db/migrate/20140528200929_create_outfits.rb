class CreateOutfits < ActiveRecord::Migration
  def change
    create_table :outfits do |t|
      t.string :name
      t.string :image
      t.references :actor, index: true
      t.references :episode, index: true

      t.timestamps
    end
  end
end
