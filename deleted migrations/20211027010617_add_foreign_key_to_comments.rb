class AddForeignKeyToComments < ActiveRecord::Migration[6.1]
  def change
    add_foreign_key :comments, :articles, on_delete: :cascade
  end
end
