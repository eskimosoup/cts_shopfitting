class AddAnotherLinkToPages < ActiveRecord::Migration
  def change
    add_column :pages, :link_2, :string
  end
end
