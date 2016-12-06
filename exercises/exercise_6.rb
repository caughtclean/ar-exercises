require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'
require_relative './exercise_4'
require_relative './exercise_5'

puts "Exercise 6"
puts "----------"

class Store < ActiveRecord::Base
  has_many :employees
end

class Employee < ActiveRecord::Base
  belongs_to :store
end

@store1.employees.create(first_name: "Khurram", last_name: "Virani", hourly_rate: 60)
@store1.employees.create(first_name: "Nathan", last_name: "Eyerley", hourly_rate: 85)
@store2.employees.create(first_name: "Bob", last_name: "Hill", hourly_rate: 60)
@store2.employees.create(first_name: "Bill", last_name: "Hank", hourly_rate: 60)
@store2.employees.create(first_name: "Joe", last_name: "Son", hourly_rate: 60)

pp Store.all
pp Employee.all
