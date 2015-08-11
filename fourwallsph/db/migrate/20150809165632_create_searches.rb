class CreateSearches < ActiveRecord::Migration
  def change
    create_table :searches do |t|
      t.string  :keywords
      t.integer :city_id
      t.decimal :min_rental_fee
      t.decimal :max_rental_fee
      t.integer :min_contract_term
      t.integer :max_contract_term
      t.integer :min_deposit_pay
      t.integer :max_deposit_pay
      t.integer :min_advance_pay
      t.integer :max_advance_pay

      t.timestamps null: false
    end
  end
end
