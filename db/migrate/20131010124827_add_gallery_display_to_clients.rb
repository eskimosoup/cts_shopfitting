class AddGalleryDisplayToClients < ActiveRecord::Migration
  def change
    add_column :clients, :gallery_display, :boolean
  end
end
