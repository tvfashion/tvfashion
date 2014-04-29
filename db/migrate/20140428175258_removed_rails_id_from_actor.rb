class RemovedRailsIdFromActor < ActiveRecord::Migration
   def change
   	change_column :actors, :role, :string
   end
end