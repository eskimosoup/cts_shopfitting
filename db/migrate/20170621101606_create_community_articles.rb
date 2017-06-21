class CreateCommunityArticles < ActiveRecord::Migration
  def change
    create_table :community_articles do |t|
      t.string :title, null: false
      t.text :summary
      t.text :content
      t.string :image
      t.string :sub_heading
      t.date :date, null: false
      t.string :slug, unique: true, index: true

      t.timestamps
    end
  end
end
