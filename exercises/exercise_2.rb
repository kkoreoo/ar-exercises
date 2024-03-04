require_relative '../setup'
require_relative './exercise_1'

puts "Exercise 2"
puts "----------"

# Your code goes here ...
# Find the first store and assign it to @store1
@store1 = Store.find_by(id: 1)

#Find the second store and assign it to @store 2
@store2 = Store.find_by(id: 2)

@store1.update(name: "Edmonton")