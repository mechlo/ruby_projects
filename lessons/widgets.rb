def ask(question)
  print question
  gets.chomp
end

puts "Welcome to the widget store!"
answer = ask("How many widgets would you like? ")
number = answer.to_i

puts "You entered #{answer} widgets."

if number >= 100
  puts "For #{number} widgets, your total is: $#{number * 8}"
elsif number.between?(50,100)
  puts "For #{number} widgets, your total is: $#{number * 9}"
else
  puts "For #{number} widgets, your total is: $#{number * 10}"
end



/# This is the same as before
def ask(question)
  print question + " "
  gets.chomp
end

def price(quantity)
  # Merge the three old "if" statements
/  # into one if/elsif/else statement
/  if quantity >= 100
    price_per_unit = 8
  elsif quantity >= 50 && quantity < 100
    price_per_unit = 9
  else
    price_per_unit = 10
  end
  quantity * price_per_unit
end

# This code is unchanged
puts "Welcome to the widget store!"
answer = ask("How many widgets are you ordering?")
number = answer.to_i
total = price(number)
puts "For #{number} widgets, your total is: $#{total}"
/
