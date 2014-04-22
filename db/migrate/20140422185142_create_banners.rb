class CreateBanners < ActiveRecord::Migration
  def change
    create_table :banners do |t|
      t.string :banner_type
      t.string :banner_type2
      t.integer :season
      t.string :image
      t.string :language
      t.references :show, index: true

      t.timestamps
    end
  end
end
