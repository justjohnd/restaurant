class RemoveUserNameFromUsers < ActiveRecord::Migration[6.1]
  def change
    remove_column :users, :userName
  end
end
