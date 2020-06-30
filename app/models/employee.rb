class Employee < ApplicationRecord
    belongs_to :dog



def dog_id=(id)
    self.dog = Dog.find_by(id:id)
end

def dog_id
    self.dog ? self.dog.id : nil 
end

end