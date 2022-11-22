class AddImgUrlToInsect < ActiveRecord::Migration[7.0]
  def change
    add_column :insects, :img_url, :text
  end
end
