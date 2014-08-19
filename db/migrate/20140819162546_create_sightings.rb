class CreateSightings < ActiveRecord::Migration
  def change
    create_table :sightings do |t|
      t.belongs_to :species
      t.belongs_to :regions
      t.datetime :date
      t.string :latitude
      t.string :longitude
    end
  end
end
