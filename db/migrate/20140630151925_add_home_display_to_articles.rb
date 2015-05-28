class AddHomeDisplayToArticles < ActiveRecord::Migration
  def change
    add_column :articles, :display_home, :boolean, default: false
  end
end
