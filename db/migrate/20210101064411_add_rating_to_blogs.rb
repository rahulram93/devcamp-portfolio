class AddRatingToBlogs < ActiveRecord::Migration[5.2]
  def change
    add_column :blogs, :rating, :integer, default: 0
  end
end
