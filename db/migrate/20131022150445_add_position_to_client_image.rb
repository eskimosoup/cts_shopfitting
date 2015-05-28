class AddPositionToClientImage < ActiveRecord::Migration
  def change
    add_column :client_images, :position, :integer, :default => 0
  end
end
