class AddDisplayInHomeToClientImage < ActiveRecord::Migration
  def change
    add_column :client_images, :display_home, :boolean
  end
end
