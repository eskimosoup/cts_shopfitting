class AddDisplayToHomePage < ActiveRecord::Migration
  def change
    add_column :home_pages, :display, :boolean, :default => false
  end
end
