# https://www.theodinproject.com/paths/full-stack-ruby-on-rails/courses/ruby-programming/lessons/caesar-cipher
require 'pry-nav'

LOWERCASE_RANGE = ('a'..'z')
UPPERCASE_RANGE = ('A'..'Z')

def caesar_cipher(string, shift_key)
  # result = ''
  shifted = string.chars.map do |letter|
    if UPPERCASE_RANGE.include?(letter)
      ((letter.ord + shift_key - 65) % 26) + 65
    elsif LOWERCASE_RANGE.include?(letter)
      ((letter.ord + shift_key - 97) % 26) + 97
    else
      letter
    end
  end
  shifted.map { |char| char.chr }.join
end

p caesar_cipher('aBcdefgUstAvoMGamaHIjKlmnop', 10)