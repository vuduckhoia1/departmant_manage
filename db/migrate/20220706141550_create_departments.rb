class CreateDepartments < ActiveRecord::Migration[7.0]
  def change
    create_table :departments do |t|
      t.string :name
      t.text :infor
      t.string :address

      t.timestamps
    end
  end
end
