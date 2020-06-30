class Dog < ApplicationRecord
    has_many :employees


    # def dog_owners
    #     @employees.each do |employee|
    #         employee.self
    #     end
    # end
end
