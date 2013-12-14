class CreateCustomers < ActiveRecord::Migration
  def change
    create_table :customers do |t|
      t.string :account_number
      t.string :name
      t.string :website
      t.integer :invoice_frequency

      t.timestamps
    end
  end
end
