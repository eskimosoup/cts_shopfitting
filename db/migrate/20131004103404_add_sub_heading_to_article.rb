class AddSubHeadingToArticle < ActiveRecord::Migration
  def change
    add_column :articles, :sub_heading, :string
  end
end
