class ChangeColumnName < ActiveRecord::Migration[5.0]
  def change
  	rename_column :users, :hashed_passsword, :hashed_password
  end
end
