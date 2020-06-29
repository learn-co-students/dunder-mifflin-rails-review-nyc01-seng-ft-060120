# == Schema Information
#
# Table name: dogs
#
#  id         :integer          not null, primary key
#  name       :string
#  breed      :string
#  age        :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
class Dog < ApplicationRecord
  validates_presence_of :name, :breed, :age
  validates :age, numericality: { only_integer: true }
  has_many :employees
end
