class AddClientImagesCountToClients < ActiveRecord::Migration
  def up
    add_column :clients, :client_images_count, :integer, :default => 0
    Client.all.each {|x| x.update_attribute(:client_images_count, x.client_images.count)}
  end
  
  def down
    remove_column :clients, :client_images_count
  end
end
