puts "Type what you want to cipher"

input = gets.chomp.chars

puts "By how much do you want to shift?"

shift_value = gets.chomp.to_i

ascii_array = input.map { |char| char.ord}

shift_and_translation = ascii_array.map { |char| (char - shift_value).chr}

joined = shift_and_translation.join

# p input
# p ascii_array
# p shift_and_translation
p joined