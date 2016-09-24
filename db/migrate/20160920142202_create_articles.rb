class CreateArticles < ActiveRecord::Migration
  def change
    create_table :articles do |t|
      t.string :title
      t.integer :author_id
      t.boolean :status

      t.timestamps null: false
    end
  end
end
