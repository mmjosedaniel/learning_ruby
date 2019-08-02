# frozen_string_literal: true

str = 'SSS-10.00-20.00'

def serial_average(str)
  serial = str[0, 3]
  fist_num = str[4, 5].to_f
  second_num = str[10, 5].to_f
  everange = ((fist_num + second_num) /2).round(2)

  serial + '-' + "%.2f" % everange
end

serial_average(str)