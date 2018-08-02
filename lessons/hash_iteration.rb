business = {"name" => "Treehouse", "location" => "Portland, OR"}

#each method is each_pair
business.each do |key, value|
  puts "They key is #{key} and value is #{value}."
end
