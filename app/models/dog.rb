class Dog < ApplicationRecord
    has_many :employees

    def count_employees
        self.employees.count
    end
end
