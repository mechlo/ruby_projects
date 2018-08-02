array = [1, 2, 3, 4, 5, 6]

array.each {|x| print x+1}

puts array.select {|n| n > 2}

array.reject {|n| n % 3 == 0}

hash = { 'name' => 'Matt', 'location' => "Portland"}

hash.each do |key, value|
  puts "key: #{key}, value: #{value}"
end

hash.each_key {|k| puts "key: #{k}"}

hash.each_value {|v| puts "key: #{v}"}

hash.keep_if {|key, value| key == "name"} #hash.reject
