class AddDepositAndAdvancePayOnPosts < ActiveRecord::Migration
  def change
  	add_column :posts, :deposit_pay, :integer
  	add_column :posts, :advance_pay, :integer
  end
end
