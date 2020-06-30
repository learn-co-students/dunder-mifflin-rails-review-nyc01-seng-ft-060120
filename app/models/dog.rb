class Dog < ApplicationRecord
   has_many :employees 

   def employee_finder 
      self.employees.map {|employee| "#{employee.first_name} #{employee.last_name}"}
   end 

end
