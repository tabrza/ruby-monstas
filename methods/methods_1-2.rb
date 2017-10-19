def greet(name)
  greeting = ["Hello", "Hi", "Ohai", "ZOMG"]
  greeting.sample + " #{name}!"
end

puts greet("Ada")
