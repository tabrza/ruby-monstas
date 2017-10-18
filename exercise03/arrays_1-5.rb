number = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]
number = number.select {|x| x.even?}.reverse
number.delete(6)
puts number
