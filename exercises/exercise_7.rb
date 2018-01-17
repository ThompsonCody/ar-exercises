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

puts "We need a new store, name it stranger"
store_from_stranger = gets.chomp
# get method - ruby will wait for user to input text
# chomp method - Called on string, strip inputed text of any newlines, or carrige returns at the end

s = Store.create(name: store_from_stranger)

s.errors.messages.each do |column, error|
  puts "#{column}: #{error[0]}"
end