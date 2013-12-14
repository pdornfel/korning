class UpdateCustomers < ActiveRecord::Migration
  def change

    Customer.all.each do |customer|
      data = customer.name.split(' ')
      customer.account_number = data[1]
      customer.name = data[0]
      customer.save!
    end


  end

end
