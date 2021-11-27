class AddNicknameToUsers < ActiveRecord::Migration[6.0]
  def change
    add_column :users, :nickname, :string
    add_column :users, :last_name, :string
  end
end
