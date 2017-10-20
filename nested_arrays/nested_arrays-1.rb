numbers = [
  [1, 2, 3],
  [4, 5, 6],
  [7, 8, 9]
]
sums = numbers.collect do |row|
  row.inject(:+)
end

p sums
