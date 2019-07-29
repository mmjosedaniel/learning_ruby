# frozen_string_literal: true

palindrome = 'Arriba birra'
palindrome = palindrome.downcase.delete ' '

palindrome_to_compare = ''

palindrome_length = palindrome.length - 1
backward_count = palindrome_length

for i in 0..palindrome_length do
  palindrome_to_compare += palindrome[backward_count]
  backward_count -= 1
end

if palindrome == palindrome_to_compare
  puts 'The string is a palindrome'
else
  puts 'The string is not a palindrome'
end
