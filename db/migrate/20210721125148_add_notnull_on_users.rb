class AddNotnullOnUsers < ActiveRecord::Migration[6.1]
  def change
    change_column_null :users, :name, false, 0
    change_column_null :users, :age, false, 0
    change_column_null :users, :email, false, 0
  end
end
