class AddDefaultToUsers < ActiveRecord::Migration[6.1]
  def change
    change_column_default :users, :admin, :default => false
  end
end
