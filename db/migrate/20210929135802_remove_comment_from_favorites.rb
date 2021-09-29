class RemoveCommentFromFavorites < ActiveRecord::Migration[6.0]
  def change
    remove_column :favorites, :comment, :text
  end
end
