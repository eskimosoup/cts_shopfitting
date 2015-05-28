class AddPositionToCaseStudy < ActiveRecord::Migration
  def change
    add_column :case_studies, :position, :integer
  end
end
