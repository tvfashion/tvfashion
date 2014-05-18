class AddShowIdAndSeasonIdToOutfits < ActiveRecord::Migration
  def change
    add_column :outfits, :show_id, :integer
    # add_column :outfits, :season_id, :integer
  end
end
