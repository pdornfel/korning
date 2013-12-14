class AddProductIdToSales < ActiveRecord::Migration
  def up
    add_column :sales, :product_id, :integer

    Sale.all.each do |sale|
      product = Product.where(name: sale.product_name).first
      if product.nil?
        product = Product.create!(name: sale.product_name)
        puts "#{product.name} just created"
      end
      sale.product_id = product.id
      sale.save!
    end

  end

  def down
    remove_column :sales, :product_id
  end
end