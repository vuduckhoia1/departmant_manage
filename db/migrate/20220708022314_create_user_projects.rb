class CreateUserProjects < ActiveRecord::Migration[7.0]
  def change
    create_table :user_projects do |t|
      t.boolean :is_leader
      t.references :user, null: false, foreign_key: true
      t.references :project, null: false, foreign_key: true
      t.date :time_assigned

      t.timestamps
    end
  end
end
