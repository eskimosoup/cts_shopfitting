class CreateTestimonials < ActiveRecord::Migration
  def change
    create_table :testimonials do |t|
      t.text :quote
      t.string :author

      t.timestamps
    end
  end
end
