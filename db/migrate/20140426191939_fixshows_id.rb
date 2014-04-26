class FixshowsId < ActiveRecord::Migration
  def change
  	rename_column :actors, :shows_id, :show_id
  end
end
