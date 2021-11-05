class AddColumnsToUsers < ActiveRecord::Migration[6.1]
  def change
    add_column :users, :nameLast, :string
    add_column :users, :nameFirst, :string
    add_index :users, :email
  end
end
