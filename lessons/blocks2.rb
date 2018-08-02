def get_name(prompt, &block)
  if block_given?
    print prompt + ": "
    name = gets.chomp
    print "Age: "
    age = gets.chomp
    block.call(name, age) #or yeild
    name
  else
    puts "No block given"
  end
end

my_name = get_name("Enter your name") do |your_name, age|
  puts "#{your_name}. That's a cool name. You are #{age}."
end

puts "My name: #{my_name}"


