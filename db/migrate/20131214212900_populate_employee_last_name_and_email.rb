class PopulateEmployeeLastNameAndEmail < ActiveRecord::Migration
  def up
    Employee.all.each do |employee|
      stuff = employee.first_name.split(' ')
      employee.first_name = stuff[0]
      employee.last_name = stuff[1]
      employee.email = stuff[2]
      employee.save!
      puts "#{employee.first_name} #{employee.last_name} was updated"
    end
  end
  def down
  end
end
