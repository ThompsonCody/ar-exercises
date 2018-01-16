require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'

puts "Exercise 4"
puts "----------"

# Your code goes here ...

Store.create({annual_revenue: 224000, mens_apparel: false, womens_apparel: true, name: 'Surrey'})
Store.create({annual_revenue: 430000, mens_apparel: true, womens_apparel: true, name: 'Yaletown'})
Store.create({annual_revenue: 1900000, mens_apparel: true, womens_apparel: false, name: 'Whistler'})

def name_rev_list(stores)
  stores.each do |store|
    puts "#{store.annual_revenue}, #{store.name}"
  end
end

#Men's stores
@mens_stores = Store.where(mens_apparel: true)
pp "-- Men's stores --"
name_rev_list(@mens_stores)

#Women's low rev stores
@womens_stores_lowrevenue = Store.where(womens_apparel: true).where("annual_revenue < 1000000")
pp "-- Women's Low Rev stores --"
name_rev_list(@womens_stores_lowrevenue)


