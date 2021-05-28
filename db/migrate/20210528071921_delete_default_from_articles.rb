class DeleteDefaultFromArticles < ActiveRecord::Migration[6.1]
  def change
    change_column_default :articles, :public, nil
  end
end
