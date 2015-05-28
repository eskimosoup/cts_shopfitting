class AddPositionToAward < ActiveRecord::Migration
  def change
    add_column :awards, :position, :integer
    add_column :awards, :diaplay, :boolean, :default => true
    add_column :awards, :display_footer, :boolean, :default => true
  end
end
