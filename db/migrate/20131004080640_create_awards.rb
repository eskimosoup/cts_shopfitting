class CreateAwards < ActiveRecord::Migration
  def change
    create_table :awards do |t|
      t.string :name
      t.text :content
      t.string :image

      t.timestamps
    end
  end
end
