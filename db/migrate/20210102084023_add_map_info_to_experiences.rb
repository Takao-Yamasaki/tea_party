class AddMapInfoToExperiences < ActiveRecord::Migration[6.0]
  def change
    add_column :experiences, :address, :string
    add_column :experiences, :latitude, :float
    add_column :experiences, :longitude, :float
  end
end
