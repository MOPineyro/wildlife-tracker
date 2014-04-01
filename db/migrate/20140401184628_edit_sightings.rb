class EditSightings < ActiveRecord::Migration
  def change
    remove_column :sightings, :datetime
    add_column :sightings, :date, :date
    add_column :sightings, :time, :time
  end
end
