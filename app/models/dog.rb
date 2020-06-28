class Dog < ApplicationRecord
    has_many :employees

    def emp_count
        self.employees.count 
    end
end
