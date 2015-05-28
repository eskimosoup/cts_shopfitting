class AddImageToPage < ActiveRecord::Migration
  def change
    add_column :pages, :image_2, :string
  end
end
