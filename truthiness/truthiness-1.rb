objects = [true, false, 0, 1, "", [], Object.new, Class.new, Module.new]
width = 10
objects = objects.map do |object|
  value = !!object
  result = object.inspect.sub(/:.*>/, ">").ljust(width)
  [result,value].join(" | ")
end

puts objects
