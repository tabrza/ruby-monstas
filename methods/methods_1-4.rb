def leap_year?(year)
  if year%400 == 0 || year%4 == 0 && year%100 != 0
    true
  else
    false
  end
end

p leap_year?(2000)
p leap_year?(1900)
