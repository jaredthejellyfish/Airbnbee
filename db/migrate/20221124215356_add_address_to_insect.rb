class AddAddressToInsect < ActiveRecord::Migration[7.0]
  def change
    add_column :insects, :address, :string
  end
end
