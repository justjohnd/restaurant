class AddFieldsToUsers < ActiveRecord::Migration[6.1]
  def change
    add_column :users, :nameLast, :string
    add_column :users, :nameFirst, :string
    add_column :users, :userName, :string
    add_index :users, :username, unique: true
  end
end
