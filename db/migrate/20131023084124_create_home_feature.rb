class CreateHomeFeature < ActiveRecord::Migration
  def change
    create_table :home_features do |t|
      t.string :caption
      t.string :link
      t.string :image
      t.integer :position
      t.boolean :display, :default => true
      t.timestamps
    end
  end
end
