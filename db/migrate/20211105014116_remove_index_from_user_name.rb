class RemoveIndexFromUserName < ActiveRecord::Migration[6.1]
  def change
    remove_index :users, :userName
  end
end
