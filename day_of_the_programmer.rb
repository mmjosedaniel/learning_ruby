# frozen_string_literal: true

year = 1918

def dayOfProgrammer(year)
  leap = leap_year(year)
  day = 256 - leap - 243
  "#{day}.09.#{year}"
end

def leap_year(year)
  leap = 0
  leap = 1 if (year % 4).zero? && year < 1918 ||
              (year % 4).zero? && (year % 100) != 0 &&
              year >= 1918 || (year % 400).zero? && year >= 1918
  leap
end

p dayOfProgrammer(year)
