class AddAddressToPosts < ActiveRecord::Migration
  def change
    add_column :posts, :address, :text
    add_column :posts, :contact_number, :integer
  end
end
