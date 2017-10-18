dictionary = { :one => "uno", :two => "dos", :three => "tres" }
dictionary[:four] = "cuatro"
puts dictionary.fetch(:four).capitalize
