class RenameArtilcesToPosts < ActiveRecord::Migration[5.2]
  def change
    rename_table :posts, :posts
  end
end
