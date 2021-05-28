class AddDefaultToArticles < ActiveRecord::Migration[6.1]
  def change
    change_column_default :articles, :public, :default => false
  end
end
