require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'
require_relative './exercise_4'

puts "Exercise 5"
puts "----------"

pp Store.sum(:annual_revenue)
pp Store.average(:annual_revenue).to_s
stores = Store.all
pp Store.where("annual_revenue > 1000000").count





