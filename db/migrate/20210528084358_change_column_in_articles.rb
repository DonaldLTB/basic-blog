class ChangeColumnInArticles < ActiveRecord::Migration[6.1]
  def change
    change_column :articles, :content, :text
  end
end
