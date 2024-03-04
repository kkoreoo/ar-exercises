require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'
require_relative './exercise_4'
require_relative './exercise_5'

puts "Exercise 6"
puts "----------"

# Your code goes here ...
class Store < ActiveRecord::Base
  has_many :employees
end

class Employee <ActiveRecord::Base
  belongs_to :store
end

@store1.employees.create(first_name: "Khurram", last_name:"Virani", hourly_rate: 60)
@store1.employees.create(first_name: "Jane", last_name:"Doe", hourly_rate: 40)
@store1.employees.create(first_name: "Steve", last_name:"Jobs", hourly_rate: 90)
@store2.employees.create(first_name: "Bill", last_name:"Gates", hourly_rate: 30)
@store2.employees.create(first_name: "Mark", last_name:"Zuckerberg", hourly_rate: 50)