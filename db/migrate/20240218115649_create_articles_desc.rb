class CreateArticlesDesc < ActiveRecord::Migration[7.1]
  def change
    create_table :articles_descs do |t|
      t.text :description
      t.timestamps
    end
  end
end
