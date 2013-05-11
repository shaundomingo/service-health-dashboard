class CreateServices < ActiveRecord::Migration
  def change
    create_table :services do |t|
      t.string :name
      t.string :slug
      t.string :description
      t.references :dependent
      t.integer :version
      t.integer :order

      t.timestamps
    end
    add_index :services, :dependent_id
  end
end