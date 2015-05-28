class CreateCaseStudies < ActiveRecord::Migration
  def change
    create_table :case_studies do |t|
      t.integer :client_id
      t.text :content

      t.timestamps
    end
  end
end
