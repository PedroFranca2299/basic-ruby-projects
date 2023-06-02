dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]

puts "Type a word and see if it is in the dictionary and if so, how many times"

substrings = gets.chomp.downcase

matching_words = dictionary.select { |word| substrings.include?(word) }
count = matching_words.tally

puts "The input can be subdivided into #{count} word(s) from the dictionary:"
# count.each { |word, count| puts "#{word}: #{count} time(s)" }