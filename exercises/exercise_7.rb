require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'
require_relative './exercise_4'
require_relative './exercise_5'
require_relative './exercise_6'

puts "Exercise 7"
puts "----------"

class Employee < ActiveRecord::Base
  belongs_to :store
  validates :store_id, numericality: { only_integer: true }
  validates :first_name, presence: true
  validates :last_name, presence: true
  validates :hourly_rate, numericality: { only_integer: true, greater_than: 40, less_than: 200 }
end

userinput = gets.chomp

userinput = Store.create!(name: "#{userinput}")


class Store < ActiveRecord::Base
  has_many :employees
  validates :name, length: { minimum: 3 }
  validates :annual_revenue, numericality: { only_integer: true, equal_to: 0, greater_than: 0 }
  store.errors.details[:name]
  store.errors.details[:annual_revenue]

end


