class RemoveContactNumberFromPosts < ActiveRecord::Migration
  def change
    remove_column :posts, :contact_number, :integer
  end
end
