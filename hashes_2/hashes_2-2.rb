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

selected = languages.select do |key|
  key == :de or key == :es or key == :en
end

lines = selected.map do |key, language|
  words = dictionary[key]
  translation = words.map { |key, word| "#{word}" }
  "#{key} #{translation.join(" ")}"
end

puts lines.join("\n")
