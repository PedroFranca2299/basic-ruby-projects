puts "Type what you want to cipher"

input = gets.chomp.chars

puts "By how much do you want to shift?"

shift_value = gets.chomp.to_i

ciphered_chars = input.map do |char|
    ascii_value = char.ord
    shifted_value = ascii_value - shift_value
  
    if char.match?(/[a-z]/)
      ((shifted_value - 97) % 26 + 97).chr
    elsif char.match?(/[A-Z]/)
      ((shifted_value - 65) % 26 + 65).chr
    else
      char
    end
  end

ciphered_text = ciphered_chars.join

p ciphered_text