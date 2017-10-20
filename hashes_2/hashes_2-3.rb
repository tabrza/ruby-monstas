languages = {
  :de => "German",
  :en => "English",
  :es => "Spanish"
}

dictionary = {
  :de => { :one => "eins", :two => "zwei", :three => "drei"},
  :en => { :one => "one", :two => "two", :three => "three"},
  :es => { :one => "uno", :two => "duo", :three => "tres"}
}

columns = dictionary.values.map{ |words| words.values }.transpose
width = columns.map do |column|
  column.max_by { |word| word.length }.length
end

lines = languages.keys.map do |key|
  words = dictionary[key].values
  words = words.map.with_index { |word, i| word.ljust(width[i]) }
  "#{key} #{words.join(" ")}"
end

puts lines.join("\n")
