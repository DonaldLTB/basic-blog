class ChangeColumnDefaultArticles < ActiveRecord::Migration[6.1]
  def change
    change_column_default :articles, :public, false
  end
end
