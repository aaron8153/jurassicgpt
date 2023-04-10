class CreateSpecies < ActiveRecord::Migration[7.0]
  def change
    create_table :species do |t|
      t.string :name
      t.integer :diet_type

      t.timestamps
    end
    add_index :species, :name, unique: true
  end
end
