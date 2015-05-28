class AddPositionToRoles < ActiveRecord::Migration
  def change
    add_column :roles, :position, :integer, :default => 0    
  end
end
