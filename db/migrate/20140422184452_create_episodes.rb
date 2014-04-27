class CreateEpisodes < ActiveRecord::Migration
  def change
    create_table :episodes do |t|
      t.integer :season_number
      t.integer :number
      t.string :name
      t.text :overview
      t.string :image
      t.string :air_date
      t.string :guest_stars
      t.string :director
      t.string :writer
      t.integer :rating 
      t.integer :rating_count
      t.references :show, index: true

      t.timestamps
    end
  end
end
