class CreateHomeBanner < ActiveRecord::Migration
  def change
    create_table :home_banners do |t|
      t.string :caption
      t.string :image
      t.integer :position
      t.boolean :display, :default => true
      t.timestamps
    end
  end
end
