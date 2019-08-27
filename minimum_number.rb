n = 1
password = "AUzs-nV"

def minimumNumber(n, password)
  numbers = '0123456789'
  lower_case = 'abcdefghijklmnopqrstuvwxyz'
  upper_case = 'ABCDEFGHIJKLMNOPQRSTUVWXYZ'
  special_characters = '-!@#$%^&*()+'
  # The hyphen has to be at the beginning otherwise it will create a range

  count = 0

  count += 1 if password.count(numbers).positive?
  count += 1 if password.count(lower_case).positive?
  count += 1 if password.count(upper_case).positive?
  count += 1 if password.count(special_characters).positive?

  # p [6 - n, 4 - count].max # From Hacker Rank

  if n - count >= 2
    p 6 - count - 2
  elsif n - count >= 1
    p 6 - count - 1
  else
    p 6 - count
  end
end

minimumNumber(n, password)
