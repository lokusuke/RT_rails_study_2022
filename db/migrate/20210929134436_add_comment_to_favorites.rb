class AddCommentToFavorites < ActiveRecord::Migration[6.0]
  def change
    add_column :favorites, :comment, :text
  end
end
