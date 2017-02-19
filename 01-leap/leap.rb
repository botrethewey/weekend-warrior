def leap_year? year
  #handle false cases: when the passed year is not divisible by 4
  #OR the year is greater than equal to 400 AND divisible by 4 and 100 but not divisible by 400.
  if ( year % 4 != 0 ) || ( year >= 400 && ( year % 100 == 0 && year % 400 != 0 ) )
    return false
  else
    return true
  end
end
