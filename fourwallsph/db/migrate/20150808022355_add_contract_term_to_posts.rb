class AddContractTermToPosts < ActiveRecord::Migration
  def change
    add_column :posts, :contract_term, :integer
  end
end
