class CreateArticles < ActiveRecord::Migration[6.1]
  def change
    create_table :articles do |t|
      t.string :title
      t.string :content
      t.boolean :public
      t.date :publish_date
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end