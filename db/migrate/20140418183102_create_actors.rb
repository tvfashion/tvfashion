class CreateActors < ActiveRecord::Migration
  def change
    create_table :actors do |t|
      t.string :name
      t.integer :roles_id
      t.string :image
      t.integer :show_id
      t.integer :sort_order

      t.timestamps
    end
  end
end
