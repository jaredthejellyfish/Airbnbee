class CreateInsects < ActiveRecord::Migration[7.0]
  def change
    create_table :insects do |t|
      t.text :name
      t.text :description
      t.references :user, null: false, foreign_key: true
      t.float :price

      t.timestamps
    end
  end
end
