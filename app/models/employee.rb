# == Schema Information
#
# Table name: employees
#
#  id         :integer          not null, primary key
#  first_name :string           not null
#  last_name  :string           not null
#  alias      :string
#  title      :string
#  office     :string
#  img_url    :string
#  dog_id     :integer
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
class Employee < ApplicationRecord
  validates_presence_of :first_name, :last_name, :title, :office
  validates :alias, uniqueness: true
  belongs_to  :dog
  accepts_nested_attributes_for :dog, reject_if: lambda { |attrs| attrs['name'].blank? }


  def name
    "#{self.first_name} #{self.last_name}"
  end

  def dog_name
    self.dog.name
  end
end
