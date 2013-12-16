class PopulateEmployees < ActiveRecord::Migration

  def up

    add_column :sales, :employee_id, :integer

    Sale.all.each do |sale|
      employee = Employee.where(first_name: sale.employee).first
      if employee.nil?
        employee = Employee.create!(first_name: sale.employee)

        puts "#{employee.first_name} just added to Employees table"

      end

      sale.employee_id = employee.id
      sale.save!

    end

  end

  def down
    remove_column :sales, :employee_id
  end

end
