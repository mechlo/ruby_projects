3.times { puts "Hello World!" }

#method

def block_method
  puts "This is our first line."
  yield
  puts "After yeild"
end

block_method do
  puts "This is the second line"
end

[1,2,3].each { |number| puts "Number: #{number} " }

# block arguments

def get_name
  print "Enter your name: "
  name = gets.chomp
  yield name
  name
end

name = get_name do |name|
  print "#{name}. That's a cool name"
end

puts "My name: #{my_name}"
