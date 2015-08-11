class AddContactNumberToPosts < ActiveRecord::Migration
  def change
    add_column :posts, :contact_number, :tel
  end
end
