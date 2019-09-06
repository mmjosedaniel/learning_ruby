# frozen_string_literal: true

h = 1
m = 1
def timeInWords(h, m)
  time = { 0 => " o\' clock", 1 => 'one', 2 => 'two', 3 => 'three', 4 => 'four',
           5 => 'five', 6 => 'six', 7 => 'seven', 8 => 'eight', 9 => 'nine',
           10 => 'ten', 11 => 'eleven', 12 => 'twelve', 13 => 'thirteen',
           14 => 'fourteen', 15 => 'quarter', 16 => 'sixteen', 17 => 'seventeen',
           18 => 'eighteen', 19 => 'nineteen', 20 => 'twenty', 21 => 'twenty one',
           22 => 'twenty two', 23 => 'twenty three', 24 => 'twenty four',
           25 => 'twenty five', 26 => 'twenty six', 27 => 'twenty seven',
           28 => 'twenty eight', 29 => 'twenty nine', 30 => 'half' }

  response = time[h]

  case m
  when 0
    p response + time[0]
  when 1
    p time[m] + ' minute past ' + time[h]
  when 15
    p time[m] + ' past ' + time[h]
  when 2...30
    p time[m] + ' minutes past ' + time[h]
  when 30
    p time[m] + ' past ' + time[h]
  when 45
    p time[15] + ' to ' + time[h + 1]
  when 31...60
    p time[60 - m] + ' minutes to ' + time[h + 1]
  end
end

timeInWords(h, m)
