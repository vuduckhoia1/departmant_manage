class AddMemberIdToUser < ActiveRecord::Migration[7.0]
  def change
    add_reference :users, :member, null: false, foreign_key: true
  end
end
