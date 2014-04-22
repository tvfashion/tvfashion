class CreateFashions < ActiveRecord::Migration
  def change
    create_table :fashions do |t|
      t.boolean :match
      t.string :image
      t.string :ad_url
      t.references :outfit, index: true

      t.timestamps
    end
  end
end
