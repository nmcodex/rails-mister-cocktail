class AddImageUrlToDoses < ActiveRecord::Migration[5.1]
  def change
    add_column :doses, :image_url, :string
  end
end
