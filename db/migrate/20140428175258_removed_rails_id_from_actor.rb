class RemovedRailsIdFromActor < ActiveRecord::Migration
  def change
  	change_column :actors, :roles_id, :string
  	rename_column :actors, :roles_id, :role
  end
end
