class AddCustomersToCustomerFromSales < ActiveRecord::Migration

  def up

    Sale.all.each do |sale|
      customer = Customer.where(name: sale.customer_and_account_no).first
      if customer.nil?
        customer = Customer.create(name: sale.customer_and_account_no)
        puts "#{customer.name} was just created"
      end
      sale.customer_id = customer.id
      sale.save!
    end
  end

  def down
  end
end