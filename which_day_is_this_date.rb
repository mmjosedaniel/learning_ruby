# frozen_string_literal: true

DAYS_IN_A_YEAR = 365

DAYS_IN_MONTHS = Array[0, 31, 59, 90, 120, 151, 181, 212, 243, 273, 304, 334]
DAYS_OF_THE_WEEK = Array['
  Sunday', 'Monday', 'Tuesday', 'Wednesday', 'Thursday', 'Friday', 'Saturday'
]

def day_of_the_year(day, month, year)
  first_day_of_the_month = days_in_years_plus_months(month, year)
  day_of_the_date = (first_day_of_the_month + day - 1) % 7
  puts DAYS_OF_THE_WEEK[day_of_the_date]
end

def days_in_years(year)
  year -= 1
  leaps_days = (year / 4).floor
  days_in_years = (year * DAYS_IN_A_YEAR) + leaps_days
  days_in_years
end

def days_in_years_plus_months(month, year)
  month -= 1
  days_in_years = days_in_years(year)
  if (year % 4).zero? && month > 1
    first_day_of_the_month = (days_in_years + DAYS_IN_MONTHS[month]) + 1
  else
    first_day_of_the_month = (days_in_years + DAYS_IN_MONTHS[month])
  end
  first_day_of_the_month
end

day_of_the_year(1, 1, 2019)
