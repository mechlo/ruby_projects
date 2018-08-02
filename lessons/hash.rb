#item = Hash.new
#item = {}

# key, value
item = {"name"=>"bread", "quantity"=>1}

item[1] = "Grocery Store"

item["brand"] = "Bread Co."

item[:name] = "bread"

puts item

item.delete("name")

puts item

puts item.keys

puts item.has_key?("name")
puts item.key?("name")
puts item.value?("bread")
puts item.has_value?("bread")
puts item.fetch("brand")

item.store("calories",100)

puts item

puts item.values

puts item.values_at("brand", "calories")

#methods

puts "Hash: #{item.inspect}"
print "length = "
puts item.length

print "hash.invert "
puts item.invert

print "hash.shift "
puts item.shift
p item.shift

print "hash.merge" #makes new hash, overwrites same keys
puts item.merge({"calories" => 100})
