number = Random.new.rand(5)

loop do
  print "Guess the number between 1-5 (type e to exit)"
  answer = gets.chomp.to_i
  if answer == "e"
    puts "The number was #{number}"
    break
  elsif answer == number
    puts "Correct!\n"
    break
  else
    puts "Incorrect, try again.\n"
  end
end
