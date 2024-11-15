class CreateArticles < ActiveRecord::Migration[8.0]
  def change
    create_table :articles do |t|
      t.string :title
      t.date :pubdate
      t.boolean :published

      t.timestamps
    end
  end
end
