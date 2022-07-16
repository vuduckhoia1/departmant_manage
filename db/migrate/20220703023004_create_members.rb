class CreateMembers < ActiveRecord::Migration[7.0]
  def change
    create_table :members do |t|
      t.string :username
      t.string :address
      t.date :onboard
      t.date :birthday

      t.timestamps
    end
  end
end
