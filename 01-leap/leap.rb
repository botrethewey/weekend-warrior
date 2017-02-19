def leap_year? year
  #must be divisible by 4
  if ( year % 4 == 0 ) && ( year < 400 || ( year % 100 == 0 && year % 400 == 0 ) )
    return true
  else
    return false
  end
end
