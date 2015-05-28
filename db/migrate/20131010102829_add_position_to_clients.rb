class AddPositionToClients < ActiveRecord::Migration
  def change
    add_column :clients, :position, :integer, :default => 0
  end
end
