class AddRentalFeeToPosts < ActiveRecord::Migration
  def change
    add_column :posts, :rental_fee, :decimal
  end
end
