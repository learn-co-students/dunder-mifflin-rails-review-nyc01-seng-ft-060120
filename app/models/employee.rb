class Employee < ApplicationRecord
    belongs_to :dog

    validates :alias, uniqueness: true, unless: :no_alias?
    validates :title, uniqueness: true

    def full_name
        name = self.first_name + " " + self.last_name
        name
    end

    def no_alias?
        if self.alias == "none"
            true
        else
            false
        end
    end
end
