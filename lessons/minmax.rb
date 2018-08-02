array = [1, 10, 3, 22, 5, -6, -7, 8]


def findproduct(array)

  prod = Array(array).combination(2).find_all { |x, y| x * y = prod } || []
  puts prod
end



result = findproduct


