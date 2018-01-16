require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'
require_relative './exercise_4'
require_relative './exercise_5'

puts "Exercise 6"
puts "----------"

# Your code goes here ...

@store1.employees.create(first_name: "Son", last_name: "Goku", hourly_rate: 9001)
@store1.employees.create(first_name: "Lord", last_name: "Shiva", hourly_rate: 0)

@store2.employees.create(first_name: "Big", last_name: "Hero", hourly_rate: 6)
@store2.employees.create(first_name: "Rick", last_name: "Titball", hourly_rate: 0.25)

puts Employee.count