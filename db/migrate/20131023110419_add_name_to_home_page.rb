class AddNameToHomePage < ActiveRecord::Migration
  def change
    add_column :home_pages, :name, :string
  end
end
