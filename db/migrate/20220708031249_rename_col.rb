class RenameCol < ActiveRecord::Migration[7.0]
  def change
    remove_column :users  , :username_id

    add_column :users, :username, :string

  end
end
