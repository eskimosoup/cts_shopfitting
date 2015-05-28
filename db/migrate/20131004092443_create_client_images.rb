class CreateClientImages < ActiveRecord::Migration
  def change
    create_table :client_images do |t|
      t.belongs_to :client
      t.string :name
      t.string :image
      t.boolean :display, :default => true

      t.timestamps
    end
    
    add_index :client_images, :client_id
  end
end
