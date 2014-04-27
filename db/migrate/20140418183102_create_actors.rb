class CreateActors < ActiveRecord::Migration
  def change
    create_table :actors do |t|
      t.string :name
      t.integer :role
      t.string :image
      t.references :show, index: true
      t.integer :sort_order

      t.timestamps
    end
  end
end
