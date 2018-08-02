=begin
grocery_list = Array.new
grocery_list = []
grocery_list = ["milk", "eggs", "bread"]
grocery_list = ["milk", "eggs", "bread", 1, 2, 3]
grocery_list = %w(milk eggs bread)
item = "milk"
grocery_list = %W({item} eggs bread)

grocery_list = ["milk", "eggs", "bread"]
grocery_list << "carrots"
grocery_list.push("potatoes")
grocery_list.unshift("celery")
grocery_list += ["ice cream", "pie"]

puts grocery_list.inspect
=end

grocery_list = Array.new
grocery_list = []
grocery_list = ["milk", "eggs", "bread"]
grocery_list << "carrots"
grocery_list.push("potatoes")
grocery_list.unshift("celery")
grocery_list += ["ice cream", "pie"]
puts grocery_list.inspect

puts grocery_list[1]
puts grocery_list.at(2)
puts grocery_list.first
puts grocery_list.last
puts grocery_list[-1]

item = puts grocery_list.at(1)

grocery_list.insert(2, "oatmeal")
puts grocery_list.count("oatmeal")
puts grocery_list.include?("water")
puts grocery_list.length
puts grocery_list.pop
puts grocery_list.shift

puts grocery_list.length
puts grocery_list.drop(2)
puts grocery_list.push("potatoes")
puts grocery_list.slice()
puts grocery_list.inspect
