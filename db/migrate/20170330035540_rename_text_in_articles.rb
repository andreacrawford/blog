class RenameTextInArticles < ActiveRecord::Migration[5.0]
  def change
    rename_column :articles, :text, :content
  end
end
