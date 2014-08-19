class ModifySightingsTable < ActiveRecord::Migration
  def change
    rename_column :sightings, :species_id, :specie_id
    rename_column :sightings, :regions_id, :region_id
  end
end
