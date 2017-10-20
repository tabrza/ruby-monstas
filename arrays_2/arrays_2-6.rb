words = ["one", "two", "three", "four", "five"]
words = words.select.with_index{ |word, i| i.even? }
words = words.map(&:capitalize)

words = words.map.with_index do |word, i|
  hearts = "<3" * (i * 2 + 1)
  "#{word.ljust(5)} #{hearts}"
end

puts words
