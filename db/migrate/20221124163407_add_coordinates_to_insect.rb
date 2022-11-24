class AddCoordinatesToInsect < ActiveRecord::Migration[7.0]
  def change
    add_column :insects, :latitude, :float
    add_column :insects, :longitude, :float
  end
end
