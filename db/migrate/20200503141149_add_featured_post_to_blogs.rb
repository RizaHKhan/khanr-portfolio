class AddFeaturedPostToBlogs < ActiveRecord::Migration[6.0]
  def change
    add_column :blogs, :featured, :boolean, default: false
  end
end
