# frozen_string_literal: true

def convert_temp(temperature, input_scale, output_scale = 'Celsius')
    case input_scale.downcase
    when 'kelvin'
      return temperature - 273.15 if output_scale == 'celsius'
      return (temperature - 273.15) * 1.8 if output_scale == 'fahrenheit'
    when 'celsius'
      return temperature + 273.15 if output_scale == 'kelvin'
      return (temperature * 1.8) + 32 if output_scale == 'fahrenheit'
    when 'fahrenheit'
      return (temperature - 32) / 1.8 if output_scale == 'celsius'
      return ((temperature - 32) / 1.8) + 273.15 if output_scale == 'kelvin'
    end
  end
  
  puts convert_temp(100, 'fahrenheit', 'celsius')