class AddLinkToHomePages < ActiveRecord::Migration
  def change
    add_column :home_pages, :image_link, :string
  end
end
