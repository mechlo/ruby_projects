
def print_hello(times)
  i=0
  while i < times
    puts "hello"
    i += 1
  end
end

answer = 0
while answer < 5
  print "How many times? More than 5 to exit. "
  answer = gets.chomp.to_i
  print_hello(answer)
end
