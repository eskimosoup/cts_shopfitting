class CreateTeamMembers < ActiveRecord::Migration
  def change
    create_table :team_members do |t|
      t.string :name
      t.string :image
      t.integer :role_id

      t.timestamps
    end
  end
end
