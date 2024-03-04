require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'
require_relative './exercise_4'
require_relative './exercise_5'
require_relative './exercise_6'

puts "Exercise 7"
puts "----------"

# Your code goes here ...
#1. Add validations to two models to enforce the following business rules:
class Employee < ActiveRecord::Base
  validates :first_name, :last_name, :store, presence: true
  validates :hourly_rate, numericality: { only_interger: true, greater_than_or_equal_to: 40, less_than_or_equal_to: 200 }
end

class Store < ActiveRecord::Base
  validates :name, length: { minimum: 3 } 
  validates :annual_revenue, numericality: { only_interger: true, greater_than_or_equal_to: 0 }
end

#2. Ask the user for a store name (store it in a variable)
puts "Provide a store name"
store_name = gets.chomp

#3. Attempt to create a store with the inputted name but leave out the other fields (annual_revenue, mens_apparel, and womens_apparel)
store = Store.create(name: store_name)

#4. Display the error messages provided back from ActiveRecord to the user (one on each line) after you attempt to save/create the record
puts store.valid?
puts store.errors[:name]
puts store.errors[:annual_revenue]
puts store.errors[:mens_apparel]
puts store.errors[:womens_apparel]
