class CreateHomePage < ActiveRecord::Migration
  def change
    create_table :home_pages do |t|
      t.text :content
      t.string :image
      t.timestamps
    end
  end
end
