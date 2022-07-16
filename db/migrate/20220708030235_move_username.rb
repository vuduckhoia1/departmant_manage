class MoveUsername < ActiveRecord::Migration[7.0]
  def change
    add_reference :users, :username
    remove_column :members  , :username
  end
end
