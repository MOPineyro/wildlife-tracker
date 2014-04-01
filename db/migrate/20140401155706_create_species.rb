class CreateSpecies < ActiveRecord::Migration
  def change
    create_table :species do |t|
      t.column :name, :string

      t.timestamps
    end
    create_table :sightings do |t|
      t.column :location, :string
      t.column :datetime, :datetime
      t.column :species_id, :int

      t.timestamps
    end
  end
end
