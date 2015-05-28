class AddDisplayToCaseStudy < ActiveRecord::Migration
  def change
    add_column :case_studies, :display, :boolean, :default => true
  end
end
